//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/
//this class uses the Adobe SafeLoader Class to load swfs with built-it CS5 Default Preloader.
//This is a Beta version, use at your own risk in a production environment.
package com.brav1.loaders
{
	import fl.display.SafeLoader;
	import fl.display.SafeLoaderInfo;
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.media.Video;
	import flash.net.URLRequest;
	import flash.utils.Dictionary;
	
	public class BufferSafeLoader extends EventDispatcher
	{
		public static const ALL_COMPLETE:String = "all complete";
		public static const LOADING:String = "loading";
		//
		private var dictLoader:Dictionary;
		private var _progressTotal:Number;
		// config options
		private var _progressive:Boolean = false;
		private var _startLoadWhenIdle:Boolean = false;
		private var _filesArray:Array;
		
		public function BufferSafeLoader() 
		{
		}
		
		/**
		 * Aggiunge un file da caricare alla coda
		 * @param	url			la URL del file da caricare
		 * @param	autoStart	se true il caricamento inizia immediatamante, se false viene messo in coda in attesa dell'avvio esplicito
		 * @param	loadWhenIdle	se true prepara la risorsa per il caricamento quando il sistema è libero, se false la risorsa resta in attesa di un load esplicito
		 * @return				ritorna un riferimento al SafeLoaderInfo della risorsa in coda
		 */
		public function addFile(url:String, autoStart:Boolean = false, loadWhenIdle:Boolean = false):SafeLoaderInfo
		{
			var loaderInfo:SafeLoaderInfo = null;
			//
			if (_filesArray == null)
			{
				_filesArray = new Array();
			}
			//
			if (dictLoader == null)
			{
				dictLoader = new Dictionary();
				loaderInfo = add(url, autoStart, loadWhenIdle);
				return loaderInfo;
			}
			//
			else
			{
				for (var p:* in dictLoader)
				{
					if (dictLoader[p].request.url == url)
					{
						loaderInfo = p;
						return loaderInfo;
					}
				}
				loaderInfo = add(url, autoStart, loadWhenIdle);
				return loaderInfo;
			}
			//
			return loaderInfo;
		}
		
		private function add(url:String, autoStart:Boolean, loadWhenIdle:Boolean):SafeLoaderInfo
		{
			var loader:SafeLoader = new SafeLoader();
			var request:URLRequest = new URLRequest(url);
			//
			dictLoader[loader.contentLoaderInfo] 				= new Object();
			dictLoader[loader.contentLoaderInfo].request		= request;
			dictLoader[loader.contentLoaderInfo].loaded 		= false;
			dictLoader[loader.contentLoaderInfo].progress 		= 0;
			dictLoader[loader.contentLoaderInfo].loader 		= loader;
			dictLoader[loader.contentLoaderInfo].queued			= false;
			dictLoader[loader.contentLoaderInfo].wait			= false;
			//
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
			loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, onProgress);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
			//
			if (autoStart == true)
			{
				load(loader, request);
			}
			//
			if (loadWhenIdle == true)
			{
				addToWaitList(loader.contentLoaderInfo);
			}
			//
			_filesArray.push(loader.contentLoaderInfo);
			//
			return loader.contentLoaderInfo;
		}
		
		private function addToQueue(loaderInfo:SafeLoaderInfo):void
		{
			dictLoader[loaderInfo].queued = true;
			removeFromWaitList(loaderInfo);
		}
		
		private function removeFromQueue(loaderInfo:SafeLoaderInfo):void
		{
			dictLoader[loaderInfo].queued = false;
		}
		
		private function addToWaitList(loaderInfo:SafeLoaderInfo):void
		{
			dictLoader[loaderInfo].wait = true;
			removeFromQueue(loaderInfo);
		}
		
		private function removeFromWaitList(loaderInfo:SafeLoaderInfo):void
		{
			dictLoader[loaderInfo].wait = false;
		}
		
		/**
		 * Avvia il caricamento di tutte le risorse in coda
		 */
		public function startLoad():void
		{
			if (_progressive == true)
			{
				progressiveLoad();
			}
			else
			{
				bulkLoad();
			}
		}
		
		/**
		 * Riprende il caricamento delle risorse in pausa
		 */
		public function resumeLoad():void
		{
			if (_progressive == true)
			{
				for (var prop:* in dictLoader)
				{
					removeFromWaitList(prop);
				}
				progressiveLoad();
			}
			else
			{
				bulkLoad(true);
			}
		}
		
		public function startWaitingLoad():void
		{
			for (var p:* in dictLoader)
			{
				if (dictLoader[p].wait == true)
				{
					removeFromWaitList(p);
					load(dictLoader[p].loader, dictLoader[p].request);
				}
			}
		}
		
		private function progressiveLoad():void
		{
			for (var i:uint = 0; i < _filesArray.length; i++)
			{
				if (dictLoader[_filesArray[i]].queued != true && dictLoader[_filesArray[i]].loaded != true && dictLoader[_filesArray[i]].wait != true)
				{
					load(dictLoader[_filesArray[i]].loader, dictLoader[_filesArray[i]].request);
					return;
				}
			}
		}
		
		private function bulkLoad(wait:Boolean = false):void
		{
			for (var p:* in dictLoader)
			{
				if (dictLoader[p].queued != true && dictLoader[p].loaded != true)
				{
					if (dictLoader[p].wait == wait)
					{
						load(dictLoader[p].loader, dictLoader[p].request);
					}
				}
			}	
		}
		
		private function load(loader:SafeLoader, request:URLRequest):void
		{
			//trace ("carico", request.url);
			loader.load(request);
			//dictLoader[loader.contentLoaderInfo].loading = true;
			addToQueue(loader.contentLoaderInfo);
			removeFromWaitList(loader.contentLoaderInfo);
		}
		
		/**
		 * Forza il caricamento della risorsa specificata nel SafeLoaderInfo fermando tutti gli altri caricamenti
		 * @param	loaderInfo	il riferimento alla risorsa da caricare
		 */
		public function forceLoad(loaderInfo:SafeLoaderInfo, resume:Boolean = true):void
		{
			for (var p:* in dictLoader)
			{
				if (p !== loaderInfo)
				{
					if (dictLoader[p].loaded != true && dictLoader[p].queued == true)
					{
						stopLoad(p);
						if (resume == true)
						{
							_startLoadWhenIdle = true;
							addToWaitList(p);
						}
					}
				}
			}
			load(dictLoader[loaderInfo].loader, dictLoader[loaderInfo].request); 	
		}
		
		/**
		 * ferma il caricamento della risorsa specificata dal loaderInfo
		 * @param	loaderInfo	la risorsa della quale fermare il caricamento
		 */
		public function stopLoad(loaderInfo:SafeLoaderInfo, resume:Boolean = true):void
		{
			loaderInfo.loader.unload();
			if (resume == true)
			{
				resumeLoad();
			}
		}
		
		/**
		 * ferma il caricamento di tutte le risorse in coda
		 * @param	forceDispose	se true viene chiamato il dispose del BufferLoader
		 */
		public function stopAllLoads(forceDispose:Boolean = false):void
		{
			for (var p:* in dictLoader)
			{
				stopLoad(p);
			}
			dispose();
		}
		
		/**
		 * distrugge tutti i riferimenti in memoria presenti nell'istanza di BufferLoader
		 */
		public function dispose():void
		{
			try
			{
				for (var p:* in dictLoader)
				{
					p.removeEventListener(Event.COMPLETE, onComplete);
					p.removeEventListener(ProgressEvent.PROGRESS, onProgress);
					p.removeEventListener(IOErrorEvent.IO_ERROR, onIOError);
				}
				for (var pr:* in this)
				{
					pr = null;
				}
			}
			catch (e:Error)
			{
				//trace("BufferLoader Dispose Error", e);
			}
		}
		
		// EVENTS HANDLERS
		
		private function onComplete(e:Event):void 
		{
			dictLoader[e.target].loaded = true;
			//
			e.target.removeEventListener(Event.COMPLETE, onComplete);
			//
			for (var p:* in dictLoader)
			{
				if (dictLoader[p].queued == true && dictLoader[p].loaded != true)
				{
					return;
				}
			}
			//
			for (var pro:* in dictLoader)
			{
				if (dictLoader[p].loaded == true)
				{
					removeFromQueue(p);
				}
			}
			//
			if (_startLoadWhenIdle == true || progressive == true)
			{
				if (_progressive == true)
				{
					resumeLoad();
				}
				else
				{
					for (var pr:* in dictLoader)
					{
						if (dictLoader[pr].wait == true)
						{
							startWaitingLoad();
							break;
						}
					}
				}
				//
				dispatchEvent(new Event(ALL_COMPLETE));
			}
			else
			{
				dispatchEvent(new Event(ALL_COMPLETE));
			}
		}
		
		private function onProgress(e:ProgressEvent):void 
		{
			_progressTotal=0;
			var loadersCounter:uint = 0;
			dictLoader[e.target].progress = (e.bytesLoaded * 100) / e.bytesTotal;
			for (var p:* in dictLoader)
			{
				if (dictLoader[p].queued == true)
				{
					_progressTotal += dictLoader[p].progress 
					loadersCounter++;
				}
			}
			_progressTotal = Math.round(_progressTotal / loadersCounter);
			dispatchEvent (new BufferProgressEvent(BufferProgressEvent.PROGRESS, _progressTotal));
		}
		
		private function onIOError(e:IOErrorEvent):void 
		{
			if (_progressive == true)
			{
				dictLoader[e.target as SafeLoaderInfo].loaded = false;
				removeFromQueue(e.target as SafeLoaderInfo);
				removeFromWaitList(e.target as SafeLoaderInfo);
			}
			else
			{
				for (var p:* in dictLoader)
				{
					p.removeEventListener(Event.COMPLETE, onComplete);
					p.removeEventListener(ProgressEvent.PROGRESS, onProgress);
					p.removeEventListener(IOErrorEvent.IO_ERROR, onIOError);
					stopLoad(p);
				}
			}
			dispatchEvent (e);
		}
		
		// GETTERS
		
		/**
		 * ritorna true se la risorsa è stata caricata
		 * @param	loaderInfo	il riferimento alla risorsa da controllare
		 * @return	true se la risorsa è stata caricata, false se non è stata caricata
		 */
		public function isLoaded(loaderInfo:SafeLoaderInfo):Boolean
		{
			return dictLoader[loaderInfo].loaded;
		}
		
		/**
		 * ritorna se la risorsa è nella coda di caricamento
		 * @param	loaderInfo	il riferimento alla risorsa da controllare
		 * @return	true se la risorsa è in coda, false se non è in coda
		 */
		public function isQueued(loaderInfo:SafeLoaderInfo):Boolean
		{
			return dictLoader[loaderInfo].queued;
		}
		
		/**
		 * ritorna l'oggetto caricato
		 * @param	loaderInfo	il riferimento alla risorsa da controllare
		 * @return	il riferimento all'oggetto caricato
		 */
		public function getContent(loaderInfo:SafeLoaderInfo):Object
		{
			return loaderInfo.content;
		}
		
		/**
		 * ritorna l'oggetto URLRequest della risorsa da caricare
		 * @param	loaderInfo	il riferimento alla risorsa da controllare
		 * @return	l'oggetto URLRequest riferito alla risorsa
		 */
		public function getRequest(loaderInfo:SafeLoaderInfo):URLRequest
		{
			return dictLoader[loaderInfo].request;
		}
		
		/**
		 * ritorna il numero di files in coda di caricamento
		 * @return 	il numero di files in coda di caricamento
		 */
		public function getNumFilesQueued():uint
		{
			var counter:uint = 0;
			for (var p:* in dictLoader)
			{
				if (dictLoader[p].queued == true)
				{
					counter++;
				}
			}
			return counter;
		}
		
		/**
		 * ritorna il numero di files in attesa di caricamento
		 * @return	ritorna il numero di files in attesa di caricamento
		 */
		public function getNumFilesWaiting():uint
		{
			var counter:uint = 0;
			for (var p:* in dictLoader)
			{
				if (dictLoader[p].wait == true)
				{
					counter++;
				}
			}
			return counter;
		}
		
		public function get progressive():Boolean { return _progressive; }
		
		public function set progressive(value:Boolean):void 
		{
			_progressive = value;
		}
		
		public function get startLoadWhenIdle():Boolean { return _startLoadWhenIdle; }
		
		public function set startLoadWhenIdle(value:Boolean):void 
		{
			_startLoadWhenIdle = value;
		}
		
		// GETTER SETTER
		
	}
	
}