//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard
{
	import com.brav1.bits.leaderboard.data.LeaderboardData;
	import com.brav1.bits.leaderboard.data.RemoteCommand;
	import com.brav1.bits.leaderboard.interfaces.ILeaderboardLoader;
	import com.brav1.bits.leaderboard.interfaces.ILeaderboardRemote;
	import com.brav1.bits.leaderboard.interfaces.ILeaderboardRenderer;
	import com.brav1.bits.leaderboard.observerPattern.IObserver;
	import com.brav1.bits.leaderboard.observerPattern.ISubject;
	import com.brav1.bits.leaderboard.observerPattern.LeaderboardObserver;
	import flash.errors.IllegalOperationError;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class Leaderboard implements IObserver
	{
		private var _leaderboardLoader:ILeaderboardLoader;
		private var _renderers:Array;
		private var _remotes:Array;
		private var _leaderboardData:LeaderboardData;
		private var _user:Object;
		private var _rowsDefinitions:RowsDefinitions;
		private var _leaderboardObserver:LeaderboardObserver;
		//
		private var OddRowClass:Class;
		private var EvenRowClass:Class;
		private var FirstRowClass:Class;
		private var SecondRowClass:Class;
		private var ThirdRowClass:Class;
		//
		private var _firstPage:int = 0;
		private var _currentPage:int = 0;
		private var _userEventType:String;
		private var _userPropertyName:String;
		private var _userPropertyValue:String;
		
		// Public methods
		
		/**
		 * Istanzia una copia della leaderboard
		 * Questa leaderboard si basa sul servizio tipo usato da Conad Kids in avanti.
		 * Gli attori principali di questa implementazione sono:
			 * leaderboardLoader: L'oggetto, da definire ogni volta, che si occupa di interrogare i servizi
			 * e di emettere gli eventi necessari per la gestione dei dati recuperati;
			 * rowsRenderer: un oggetto custom che si occupa la rappresentazione visiva della classifica,
			 * remote: un oggetto che permette di aggiungere i controlli alla classifica,
			 * i controlli base sono pagina precedente, pagina successiva, prima pagina e pagina dell'utente,
			 * senza un oggetto remote la classifica mostrerà solo la prima pagina, utile nel caso si voglia mostrare solo una topX;
		 * @param	leaderboardLoader	la classe LeaderboardLoader o una sua sottoclasse che si occupa di interrogare il servizio
		 * @param	rowsRenderer	l'oggetto rowsRenderer che permette di renderizzare la classifica
		 * @param	remote	l'oggetto opzionale remote che permette di aggiungere i controlli alla classifica
		 */
		public function Leaderboard(leaderboardLoader:ILeaderboardLoader)
		{
			_leaderboardObserver = new LeaderboardObserver();
			//
			setLoader(leaderboardLoader);
		}
		
		/**
		 * Setta le classi da usare per istanziare le righe,
		 * è possibile passare tutte le righe necessarie o solo un sottoinsieme secondo le regole definite dai parametri
		 * @param	oddRow	la classe da usare per instanziare le righe dispari normali
		 * @param	evenRow	la classe da usare per instanziare le righe pari normali, se non è passata una classe viene usata quella per le righe dispari
		 * @param	firstRow	la classe da usare per instanziare la riga per la prima posizione, se non è passata una classe viene usata quella per le righe dispari
		 * @param	secondRow	la classe da usare per instanziare la riga per la seconda posizione, se non è passata una classe viene usata quella per le righe pari
		 * @param	thirdRow	la classe da usare per instanziare la riga per la terza posizione, se non è passata una classe viene usata quella per le righe dispari
		 */
		public function setRowClasses(oddRow:Class, evenRow:Class = null, firstRow:Class = null, secondRow:Class = null, thirdRow:Class = null):void
		{
			OddRowClass = oddRow;
			EvenRowClass = evenRow ? evenRow : oddRow;
			FirstRowClass = firstRow ? firstRow : oddRow;
			SecondRowClass = secondRow ? secondRow : evenRow;
			ThirdRowClass = thirdRow ? thirdRow : oddRow;
			_rowsDefinitions = new RowsDefinitions(OddRowClass, EvenRowClass, FirstRowClass, SecondRowClass, ThirdRowClass);
		}
		
		/**
		 * setta il valore per la prima pagina, di default settato a 0
		 * @param	value	un intero che identifica da dove iniziare a contare le pagine
		 */
		public function setFirstPage(value:int):void 
		{
			_firstPage = value;
			_currentPage = _firstPage;
		}
		
		/**
		 * effettua il binding di un oggetto generico da utilizzare come riferimento per l'utente, se disponibile
		 * @param	userObject	l'oggetto da utilizzare per riferimento
		 * @param	eventType	il tipo di evento da ascoltare quando cambia lo status dell'utente, queto evento dovrà essere emesso dall'oggetto quando cambia lo status
		 * @param	propertyName il nome della proprietà da controllare per sapere se l'utente è loggato o meno
		 * @param	propertyValue	la rappresentazione in formato stringa per il confronto con la proprietà indicata, se il valore in formato stringa è uguale l'utente è loggato
		 */
		public function bindUserObject(userObject:Object, eventType:String, propertyName:String, propertyValue:String = "true"):void
		{
			_user = userObject;
			_userEventType = eventType;
			_userPropertyName = propertyName;
			_userPropertyValue = propertyValue;
			_user.addEventListener(_userEventType, onUserStatus);
		}
		
		/**
		 * aggiunge un renderer alla classifica per poter mostrare a schermo le righe.
		 * È possibile aggiungere un numero indefinito di renderer in modo da gestire le casistiche necessarie all'implementazione;
		 * ad esempio è possibile aggiungere un renderer per il podio e uno per il resto della classifica
		 * o diversi renderer per mostrare dati personalizzari in ognuno.
		 * La gestione dei renderer è a carico dell'implementatore.
		 * @param	renderer	l'instanza del renderer da aggiungere, deve implementare l'interfaccia ILeaderboardRenderer
		 */
		public function addRenderer(renderer:ILeaderboardRenderer):void
		{
			if (_renderers == null)
			{
				_renderers = new Array();
			}
			if (checkDuplicates(_renderers, renderer) == false)
			{
				_renderers.push(renderer);
			}
		}
		
		/**
		 * rimuove uno dei renderer aggiunti alla classifica
		 * @param	renderer	l'oggetto renderer da rimuovere
		 */
		public function removeRenderer(renderer:ILeaderboardRenderer):void
		{
			for (var i:uint = 0; i < _renderers.length; i++)
			{
				if (_renderers[i] === renderer)
				{
					_renderers.splice(i, 1);
					return;
				}
			}
		}
		
		/**
		 * aggiunge un remote alla classifica per poter controllare la paginazione.
		 * È possibile aggiungere un numero indefinito di remote in modo da gestire le casistiche necessarie all'implementazione;
		 * ad esempio è possibile aggiungere un remote per la paginazione con i pulsanti e un remote per inserire direttamente il numero di pagina.
		 * La gestione dei remote è a carico dell'implementatore.
		 * @param	remote	l'instanza del remote da aggiungere, deve implementare l'interfaccia ILeaderboardRemote
		 */
		public function addRemote(remote:ILeaderboardRemote):void
		{
			if (_remotes == null)
			{
				_remotes = new Array();
			}
			if (checkDuplicates(_remotes, remote) == false)
			{
				_remotes.push(remote);
				_leaderboardObserver.registerActors(this, remote, LeaderboardObserver.REMOTE_COMMAND);
			}
		}
		
		/**
		 * rimuove uno dei remote aggiunti alla classifica
		 * @param	remote	l'oggetto remote da rimuovere
		 */
		public function removeRemote(remote:ILeaderboardRemote):void
		{
			for (var i:uint = 0; i < _remotes.length; i++)
			{
				if (_remotes[i] === remote)
				{
					_leaderboardObserver.unregisterActors(this, remote, LeaderboardObserver.REMOTE_COMMAND);
					_remotes.splice(i, 1);
					return;
				}
			}
		}
		
		/**
		 * inizializza la classifica ed effettua la prima chiamata per ottenere la prima pagina
		 */
		public function init():void
		{
			if (_rowsDefinitions == null)
			{
				throw new IllegalOperationError("No Rows defined, use 'setRowClasses' method");
			}
			else
			{
				gotoFirstPage();
			}
		}
		
		/**
		 * setta i riferimenti interni della classifica per il garbage collecting
		 */
		public function dispose():void
		{
			_leaderboardLoader = null;
			//
			_leaderboardObserver.dispose();
			_leaderboardObserver = null;
			//
			_renderers = null;
			_remotes = null;
			//
			_leaderboardData = null;
			_user = null;
			_rowsDefinitions = null;
		}
		
		// Private methods
		
		private function onUserStatus(e:Event):void
		{
			setRemoteStatus();
		}
		
		private function getUserStatus():Boolean 
		{
			if (_user != null)
			{
				return _user[_userPropertyName].toString() === _userPropertyValue;
			}
			return false;
		}
		
		private function setLoader(leaderboardLoader:ILeaderboardLoader):void 
		{
			_leaderboardLoader = leaderboardLoader;
			_leaderboardObserver.registerActors(this, _leaderboardLoader, LeaderboardObserver.LOAD_COMPLETE);
			_leaderboardObserver.registerActors(this, _leaderboardLoader, LeaderboardObserver.LOAD_FAILED);
		}
		
		private function setRemoteStatus():void 
		{
			if (_leaderboardData != null && _remotes != null)
			{
				for (var i:uint = 0; i < _remotes.length; i++)
				{
					ILeaderboardRemote(_remotes[i]).setStatus(_leaderboardData.currentPage, _leaderboardData.prev, _leaderboardData.next, getUserStatus());
				}
			}
		}
		
		private function getLeaderboard(action:String, page:Number = NaN, searchString:String = ""):void
		{
			waitLoading();
			//
			switch (action) 
			{
				case LeaderboardObserver.PREV_PAGE : 
					_leaderboardLoader.loadPrevPage();
				break;
				case LeaderboardObserver.NEXT_PAGE : 
					_leaderboardLoader.loadNextPage();
				break;
				case LeaderboardObserver.USER_PAGE : 
					_leaderboardLoader.loadUserPage();
				break;
				case LeaderboardObserver.FIRST_PAGE : 
					_leaderboardLoader.loadFirstPage();
				break;
				case LeaderboardObserver.LAST_PAGE : 
					_leaderboardLoader.loadLastPage();
				break;
				case LeaderboardObserver.CUSTOM_PAGE: 
					_leaderboardLoader.loadPage(page);
				break;
				case LeaderboardObserver.SEARCH_PAGE: 
					_leaderboardLoader.loadSearchPage(searchString);
				break;
				case LeaderboardObserver.RELOAD_PAGE:
					_leaderboardLoader.loadPage();
				break;
				default:
					_leaderboardLoader.loadFirstPage();
			}
		}
		
		private function waitLoading():void 
		{
			if (_renderers != null)
			{
				for (var i:uint = 0; i < _renderers.length; i++)
				{
					ILeaderboardRenderer(_renderers[i]).waitLoading();
				}
			}
			if (_remotes != null)
			{
				for (i = 0; i < _remotes.length; i++)
				{
					ILeaderboardRemote(_remotes[i]).waitLoading();
				}
			}
		}
		
		public function receiveNotification(subject:ISubject, change:String):void
		{
			if (subject is ILeaderboardLoader)
			{
				if (change == LeaderboardObserver.LOAD_COMPLETE)
				{
					_leaderboardData = LeaderboardData(subject.getData());
					renderRows(_leaderboardData);
				}
				else if (change == LeaderboardObserver.LOAD_FAILED)
				{
					_leaderboardData = LeaderboardData(subject.getData());
					renderRows(_leaderboardData);
				}
			}
			if (subject is ILeaderboardRemote)
			{
				var command:RemoteCommand = subject.getData();
				switch (command.getCommand()) 
				{
					case LeaderboardObserver.PREV_PAGE : 
						gotoPrevPage();
					break;
					case LeaderboardObserver.NEXT_PAGE :  
						gotoNextPage();
					break;
					case LeaderboardObserver.USER_PAGE :  
						gotoUserPage();
					break;
					case LeaderboardObserver.FIRST_PAGE :  
						gotoFirstPage();
					break;
					case LeaderboardObserver.LAST_PAGE :  
						gotoLastPage();
					break;
					case LeaderboardObserver.CUSTOM_PAGE:
						gotoPage(command.getPage());
					break;
					case LeaderboardObserver.SEARCH_PAGE:
						gotoSearchPage(command.getSearchString());
					break;
					case LeaderboardObserver.RELOAD_PAGE:
						gotoPage();
					break;
				}
			}
		}
		
		private function renderRows(data:LeaderboardData):void 
		{
			if (_renderers != null)
			{
				for (var i:uint = 0; i < _renderers.length; i++)
				{
					ILeaderboardRenderer(_renderers[i]).render(data, _rowsDefinitions);
				}
			}
			setRemoteStatus();
		}
		
		//
		
		public function gotoPrevPage():void
		{
			getLeaderboard(LeaderboardObserver.PREV_PAGE);
		}
		
		public function gotoNextPage():void
		{
			getLeaderboard(LeaderboardObserver.NEXT_PAGE);
		}
		
		public function gotoFirstPage():void
		{
			getLeaderboard(LeaderboardObserver.FIRST_PAGE);
		}
		
		public function gotoLastPage():void
		{
			getLeaderboard(LeaderboardObserver.LAST_PAGE);
		}
		
		public function gotoUserPage():void
		{
			getLeaderboard(LeaderboardObserver.USER_PAGE);
		}
		
		public function gotoPage(page:Number = NaN):void
		{
			getLeaderboard(LeaderboardObserver.CUSTOM_PAGE, page);
		}
		
		public function gotoSearchPage(searchString:String):void
		{
			getLeaderboard(LeaderboardObserver.SEARCH_PAGE, NaN, searchString);
		}
		
		// Utilities
		
		private function checkDuplicates(array:Array, element:*):Boolean 
		{
			for (var i:uint = 0; i < array.length; i++)
			{
				if (array[i] === element)
				{
					return true;
				}
			}
			return false;
		}
	
	}

}