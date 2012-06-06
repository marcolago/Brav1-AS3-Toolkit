//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.data
{
	public class Cities_Italy
	{
		public static function getProvinces (regionCode:String = ""):Array
		{
			var aProvinces:Array = new Array();
			for each(var p in Cities_Italy.xmlData.prov)
			{
				var prov:Object = new Object()
				prov.name = p.name;
				prov.code = p.code;
				if (regionCode == "" || regionCode == p.code)
				{
					aProvinces.push( 	{
											code: 		p.code,
											name: 		p.name,
											region: 	p.region,
											numCities:	p.comuni.comune.length()
										});
				}
				
			}
			return aProvinces;
		}
		
		public static function getCities (prov:String):Array
		{
			
			var aCities:Array = new Array();
			for each(var p in Cities_Italy.xmlData.prov.(code == prov).comuni.comune)
			{
					var city:Object = new Object()
					city.name = p;
					aCities.push(	{
										code: p,
										name: p
									});
			}
			return aCities;
		}
		
		// DATA
		
		public static var xmlData:XML = <provs>
											<prov>
												<code>AG</code>
												<name>AGRIGENTO</name>
												<region>SICILIA</region>
												<comuni>
													<comune>Agrigento</comune>
													<comune>Alessandria della Rocca</comune>
													<comune>Aragona</comune>
													<comune>Bivona</comune>
													<comune>Burgio</comune>
													<comune>Calamonaci</comune>
													<comune>Caltabellotta</comune>
													<comune>Camastra</comune>
													<comune>Cammarata</comune>
													<comune>Campobello di Licata</comune>
													<comune>Canicattì</comune>
													<comune>Casteltermini</comune>
													<comune>Castrofilippo</comune>
													<comune>Cattolica Eraclea</comune>
													<comune>Cianciana</comune>
													<comune>Comitini</comune>
													<comune>Favara</comune>
													<comune>Grotte</comune>
													<comune>Joppolo Giancaxio</comune>
													<comune>Lampedusa e Linosa</comune>
													<comune>Licata</comune>
													<comune>Lucca Sicula</comune>
													<comune>Menfi</comune>
													<comune>Montallegro</comune>
													<comune>Montevago</comune>
													<comune>Naro</comune>
													<comune>Palma di Montechiaro</comune>
													<comune>Porto Empedocle</comune>
													<comune>Racalmuto</comune>
													<comune>Raffadali</comune>
													<comune>Ravanusa</comune>
													<comune>Realmonte</comune>
													<comune>Ribera</comune>
													<comune>Sambuca di Sicilia</comune>
													<comune>San Biagio Platani</comune>
													<comune>San Giovanni Gemini</comune>
													<comune>Sant'Angelo Muxaro</comune>
													<comune>Santa Elisabetta</comune>
													<comune>Santa Margherita di Belice</comune>
													<comune>Santo Stefano Quisquina</comune>
													<comune>Sciacca</comune>
													<comune>Siculiana</comune>
													<comune>Villafranca Sicula</comune>
												</comuni>
											</prov>
											<prov>
												<code>AL</code>
												<name>ALESSANDRIA</name>
												<region>PIEMONTE</region>
												<comuni>
													<comune>Acqui Terme</comune>
													<comune>Albera Ligure</comune>
													<comune>Alessandria</comune>
													<comune>Alfiano Natta</comune>
													<comune>Alice Bel Colle</comune>
													<comune>Alluvioni Cambiè</comune>
													<comune>Altavilla Monferrato</comune>
													<comune>Alzano Scrivia</comune>
													<comune>Arquata Scrivia</comune>
													<comune>Avolasca</comune>
													<comune>Balzola</comune>
													<comune>Basaluzzo</comune>
													<comune>Bassignana</comune>
													<comune>Belforte Monferrato</comune>
													<comune>Bergamasco</comune>
													<comune>Berzano di Tortona</comune>
													<comune>Bistagno</comune>
													<comune>Borghetto di Borbera</comune>
													<comune>Borgo San Martino</comune>
													<comune>Borgoratto Alessandrino</comune>
													<comune>Bosco Marengo</comune>
													<comune>Bosio</comune>
													<comune>Bozzole</comune>
													<comune>Brignano-Frascata</comune>
													<comune>Cabella Ligure</comune>
													<comune>Camagna Monferrato</comune>
													<comune>Camino</comune>
													<comune>Cantalupo Ligure</comune>
													<comune>Capriata d'Orba</comune>
													<comune>Carbonara Scrivia</comune>
													<comune>Carentino</comune>
													<comune>Carezzano</comune>
													<comune>Carpeneto</comune>
													<comune>Carrega Ligure</comune>
													<comune>Carrosio</comune>
													<comune>Cartosio</comune>
													<comune>Casal Cermelli</comune>
													<comune>Casale Monferrato</comune>
													<comune>Casaleggio Boiro</comune>
													<comune>Casalnoceto</comune>
													<comune>Casasco</comune>
													<comune>Cassano Spinola</comune>
													<comune>Cassine</comune>
													<comune>Cassinelle</comune>
													<comune>Castellania</comune>
													<comune>Castellar Guidobono</comune>
													<comune>Castellazzo Bormida</comune>
													<comune>Castelletto Merli</comune>
													<comune>Castelletto Monferrato</comune>
													<comune>Castelletto d'Erro</comune>
													<comune>Castelletto d'Orba</comune>
													<comune>Castelnuovo Bormida</comune>
													<comune>Castelnuovo Scrivia</comune>
													<comune>Castelspina</comune>
													<comune>Cavatore</comune>
													<comune>Cella Monte</comune>
													<comune>Cereseto</comune>
													<comune>Cerreto Grue</comune>
													<comune>Cerrina Monferrato</comune>
													<comune>Coniolo</comune>
													<comune>Conzano</comune>
													<comune>Costa Vescovato</comune>
													<comune>Cremolino</comune>
													<comune>Cuccaro Monferrato</comune>
													<comune>Denice</comune>
													<comune>Dernice</comune>
													<comune>Fabbrica Curone</comune>
													<comune>Felizzano</comune>
													<comune>Fraconalto</comune>
													<comune>Francavilla Bisio</comune>
													<comune>Frascaro</comune>
													<comune>Frassinello Monferrato</comune>
													<comune>Frassineto Po</comune>
													<comune>Fresonara</comune>
													<comune>Frugarolo</comune>
													<comune>Fubine</comune>
													<comune>Gabiano</comune>
													<comune>Gamalero</comune>
													<comune>Garbagna</comune>
													<comune>Gavazzana</comune>
													<comune>Gavi</comune>
													<comune>Giarole</comune>
													<comune>Gremiasco</comune>
													<comune>Grognardo</comune>
													<comune>Grondona</comune>
													<comune>Guazzora</comune>
													<comune>Isola Sant'Antonio</comune>
													<comune>Lerma</comune>
													<comune>Lu</comune>
													<comune>Malvicino</comune>
													<comune>Masio</comune>
													<comune>Melazzo</comune>
													<comune>Merana</comune>
													<comune>Mirabello Monferrato</comune>
													<comune>Molare</comune>
													<comune>Molino dei Torti</comune>
													<comune>Mombello Monferrato</comune>
													<comune>Momperone</comune>
													<comune>Moncestino</comune>
													<comune>Mongiardino Ligure</comune>
													<comune>Monleale</comune>
													<comune>Montacuto</comune>
													<comune>Montaldeo</comune>
													<comune>Montaldo Bormida</comune>
													<comune>Montecastello</comune>
													<comune>Montechiaro d'Acqui</comune>
													<comune>Montegioco</comune>
													<comune>Montemarzino</comune>
													<comune>Morano sul Po</comune>
													<comune>Morbello</comune>
													<comune>Mornese</comune>
													<comune>Morsasco</comune>
													<comune>Murisengo</comune>
													<comune>Novi Ligure</comune>
													<comune>Occimiano</comune>
													<comune>Odalengo Grande</comune>
													<comune>Odalengo Piccolo</comune>
													<comune>Olivola</comune>
													<comune>Orsara Bormida</comune>
													<comune>Ottiglio</comune>
													<comune>Ovada</comune>
													<comune>Oviglio</comune>
													<comune>Ozzano Monferrato</comune>
													<comune>Paderna</comune>
													<comune>Pareto</comune>
													<comune>Parodi Ligure</comune>
													<comune>Pasturana</comune>
													<comune>Pecetto di Valenza</comune>
													<comune>Pietra Marazzi</comune>
													<comune>Piovera</comune>
													<comune>Pomaro Monferrato</comune>
													<comune>Pontecurone</comune>
													<comune>Pontestura</comune>
													<comune>Ponti</comune>
													<comune>Ponzano Monferrato</comune>
													<comune>Ponzone</comune>
													<comune>Pozzol Groppo</comune>
													<comune>Pozzolo Formigaro</comune>
													<comune>Prasco</comune>
													<comune>Predosa</comune>
													<comune>Quargnento</comune>
													<comune>Quattordio</comune>
													<comune>Ricaldone</comune>
													<comune>Rivalta Bormida</comune>
													<comune>Rivarone</comune>
													<comune>Rocca Grimalda</comune>
													<comune>Roccaforte Ligure</comune>
													<comune>Rocchetta Ligure</comune>
													<comune>Rosignano Monferrato</comune>
													<comune>Sala Monferrato</comune>
													<comune>Sale</comune>
													<comune>San Cristoforo</comune>
													<comune>San Giorgio Monferrato</comune>
													<comune>San Salvatore Monferrato</comune>
													<comune>San Sebastiano Curone</comune>
													<comune>Sant'Agata Fossili</comune>
													<comune>Sardigliano</comune>
													<comune>Sarezzano</comune>
													<comune>Serralunga di Crea</comune>
													<comune>Serravalle Scrivia</comune>
													<comune>Sezzadio</comune>
													<comune>Silvano d'Orba</comune>
													<comune>Solero</comune>
													<comune>Solonghello</comune>
													<comune>Spigno Monferrato</comune>
													<comune>Spineto Scrivia</comune>
													<comune>Stazzano</comune>
													<comune>Strevi</comune>
													<comune>Tagliolo Monferrato</comune>
													<comune>Tassarolo</comune>
													<comune>Terruggia</comune>
													<comune>Terzo</comune>
													<comune>Ticineto</comune>
													<comune>Tortona</comune>
													<comune>Treville</comune>
													<comune>Trisobbio</comune>
													<comune>Valenza</comune>
													<comune>Valmacca</comune>
													<comune>Vignale Monferrato</comune>
													<comune>Vignole Borbera</comune>
													<comune>Viguzzolo</comune>
													<comune>Villadeati</comune>
													<comune>Villalvernia</comune>
													<comune>Villamiroglio</comune>
													<comune>Villanova Monferrato</comune>
													<comune>Villaromagnano</comune>
													<comune>Visone</comune>
													<comune>Volpedo</comune>
													<comune>Volpeglino</comune>
													<comune>Voltaggio</comune>
												</comuni>
											</prov>
											<prov>
												<code>AN</code>
												<name>ANCONA</name>
												<region>MARCHE</region>
												<comuni>
													<comune>Agugliano</comune>
													<comune>Ancona</comune>
													<comune>Arcevia</comune>
													<comune>Barbara</comune>
													<comune>Belvedere Ostrense</comune>
													<comune>Camerano</comune>
													<comune>Camerata Picena</comune>
													<comune>Castel Colonna</comune>
													<comune>Castelbellino</comune>
													<comune>Castelfidardo</comune>
													<comune>Castelleone di Suasa</comune>
													<comune>Castelplanio</comune>
													<comune>Cerreto d'Esi</comune>
													<comune>Chiaravalle</comune>
													<comune>Corinaldo</comune>
													<comune>Cupramontana</comune>
													<comune>Fabriano</comune>
													<comune>Falconara Marittima</comune>
													<comune>Filottrano</comune>
													<comune>Genga</comune>
													<comune>Jesi</comune>
													<comune>Loreto</comune>
													<comune>Maiolati Spontini</comune>
													<comune>Mergo</comune>
													<comune>Monsano</comune>
													<comune>Monte Roberto</comune>
													<comune>Monte San Vito</comune>
													<comune>Montecarotto</comune>
													<comune>Montemarciano</comune>
													<comune>Monterado</comune>
													<comune>Morro d'Alba</comune>
													<comune>Numana</comune>
													<comune>Offagna</comune>
													<comune>Osimo</comune>
													<comune>Ostra</comune>
													<comune>Ostra Vetere</comune>
													<comune>Poggio San Marcello</comune>
													<comune>Polverigi</comune>
													<comune>Ripe</comune>
													<comune>Rosora</comune>
													<comune>San Marcello</comune>
													<comune>San Paolo di Jesi</comune>
													<comune>Santa Maria Nuova</comune>
													<comune>Sassoferrato</comune>
													<comune>Senigallia</comune>
													<comune>Serra San Quirico</comune>
													<comune>Serra de' Conti</comune>
													<comune>Sirolo</comune>
													<comune>Staffolo</comune>
												</comuni>
											</prov>
											<prov>
												<code>AO</code>
												<name>AOSTA</name>
												<region>VALLE D'AOSTA</region>
												<comuni>
													<comune>Allein</comune>
													<comune>Antey-Saint-Andrè</comune>
													<comune>Aosta</comune>
													<comune>Arnad</comune>
													<comune>Arvier</comune>
													<comune>Avise</comune>
													<comune>Ayas</comune>
													<comune>Aymavilles</comune>
													<comune>Bard</comune>
													<comune>Bionaz</comune>
													<comune>Brissogne</comune>
													<comune>Brusson</comune>
													<comune>Challand-Saint-Anselme</comune>
													<comune>Challand-Saint-Victor</comune>
													<comune>Chambave</comune>
													<comune>Chamois</comune>
													<comune>Champdepraz</comune>
													<comune>Champorcher</comune>
													<comune>Charvensod</comune>
													<comune>Chatillon</comune>
													<comune>Cogne</comune>
													<comune>Courmayeur</comune>
													<comune>Donnas</comune>
													<comune>Doues</comune>
													<comune>Emarese</comune>
													<comune>Etroubles</comune>
													<comune>Fenis</comune>
													<comune>Fontainemore</comune>
													<comune>Gaby</comune>
													<comune>Gignod</comune>
													<comune>Gressan</comune>
													<comune>Gressoney-Saint-Jean</comune>
													<comune>Gressoney-la-Trinità</comune>
													<comune>Hone</comune>
													<comune>Introd</comune>
													<comune>Issime</comune>
													<comune>Issogne</comune>
													<comune>Jovencan</comune>
													<comune>La Magdeleine</comune>
													<comune>La Salle</comune>
													<comune>La Thuile</comune>
													<comune>Lillianes</comune>
													<comune>Montjovet</comune>
													<comune>Morgex</comune>
													<comune>Nus</comune>
													<comune>Ollomont</comune>
													<comune>Oyace</comune>
													<comune>Perloz</comune>
													<comune>Pollein</comune>
													<comune>Pont-Saint-Martin</comune>
													<comune>Pontboset</comune>
													<comune>Pontey</comune>
													<comune>Prà-Saint-Didier</comune>
													<comune>Quart</comune>
													<comune>Rhemes-Notre-Dame</comune>
													<comune>Rhemes-Saint-Georges</comune>
													<comune>Roisan</comune>
													<comune>Saint-Christophe</comune>
													<comune>Saint-Denis</comune>
													<comune>Saint-Marcel</comune>
													<comune>Saint-Nicolas</comune>
													<comune>Saint-Oyen</comune>
													<comune>Saint-Pierre</comune>
													<comune>Saint-Rhemy-En-Bosses</comune>
													<comune>Saint-Vincent</comune>
													<comune>Sarre</comune>
													<comune>Torgnon</comune>
													<comune>Valgrisenche</comune>
													<comune>Valpelline</comune>
													<comune>Valsavarenche</comune>
													<comune>Valtournenche</comune>
													<comune>Verrayes</comune>
													<comune>Verres</comune>
													<comune>Villeneuve</comune>
												</comuni>
											</prov>
											<prov>
												<code>AR</code>
												<name>AREZZO</name>
												<region>TOSCANA</region>
												<comuni>
													<comune>Anghiari</comune>
													<comune>Arezzo</comune>
													<comune>Badia Tedalda</comune>
													<comune>Bibbiena</comune>
													<comune>Bucine</comune>
													<comune>Capolona</comune>
													<comune>Caprese Michelangelo</comune>
													<comune>Castel Focognano</comune>
													<comune>Castel San Niccolà</comune>
													<comune>Castelfranco di Sopra</comune>
													<comune>Castiglion Fibocchi</comune>
													<comune>Castiglion Fiorentino</comune>
													<comune>Cavriglia</comune>
													<comune>Chitignano</comune>
													<comune>Chiusi della Verna</comune>
													<comune>Civitella in Val di Chiana</comune>
													<comune>Cortona</comune>
													<comune>Foiano della Chiana</comune>
													<comune>Laterina</comune>
													<comune>Loro Ciuffenna</comune>
													<comune>Lucignano</comune>
													<comune>Marciano della Chiana</comune>
													<comune>Monte San Savino</comune>
													<comune>Montemignaio</comune>
													<comune>Monterchi</comune>
													<comune>Montevarchi</comune>
													<comune>Ortignano Raggiolo</comune>
													<comune>Pergine Valdarno</comune>
													<comune>Pian di Sco</comune>
													<comune>Pieve Santo Stefano</comune>
													<comune>Poppi</comune>
													<comune>Pratovecchio</comune>
													<comune>San Giovanni Valdarno</comune>
													<comune>Sansepolcro</comune>
													<comune>Sestino</comune>
													<comune>Stia</comune>
													<comune>Subbiano</comune>
													<comune>Talla</comune>
													<comune>Terranuova Bracciolini</comune>
												</comuni>
											</prov>
											<prov>
												<code>AP</code>
												<name>ASCOLI PICENO</name>
												<region>MARCHE</region>
												<comuni>
													<comune>Acquasanta Terme</comune>
													<comune>Acquaviva Picena</comune>
													<comune>Altidona</comune>
													<comune>Amandola</comune>
													<comune>Appignano del Tronto</comune>
													<comune>Arquata del Tronto</comune>
													<comune>Ascoli Piceno</comune>
													<comune>Belmonte Piceno</comune>
													<comune>Campofilone</comune>
													<comune>Carassai</comune>
													<comune>Castel di Lama</comune>
													<comune>Castignano</comune>
													<comune>Castorano</comune>
													<comune>Colli del Tronto</comune>
													<comune>Comunanza</comune>
													<comune>Cossignano</comune>
													<comune>Cupra Marittima</comune>
													<comune>Falerone</comune>
													<comune>Fermo</comune>
													<comune>Folignano</comune>
													<comune>Force</comune>
													<comune>Francavilla d'Ete</comune>
													<comune>Grottammare</comune>
													<comune>Grottazzolina</comune>
													<comune>Lapedona</comune>
													<comune>Magliano di Tenna</comune>
													<comune>Maltignano</comune>
													<comune>Massa Fermana</comune>
													<comune>Massignano</comune>
													<comune>Monsampietro Morico</comune>
													<comune>Monsampolo del Tronto</comune>
													<comune>Montalto delle Marche</comune>
													<comune>Montappone</comune>
													<comune>Monte Giberto</comune>
													<comune>Monte Rinaldo</comune>
													<comune>Monte San Pietrangeli</comune>
													<comune>Monte Urano</comune>
													<comune>Monte Vidon Combatte</comune>
													<comune>Monte Vidon Corrado</comune>
													<comune>Montedinove</comune>
													<comune>Montefalcone Appennino</comune>
													<comune>Montefiore dell'Aso</comune>
													<comune>Montefortino</comune>
													<comune>Montegallo</comune>
													<comune>Montegiorgio</comune>
													<comune>Montegranaro</comune>
													<comune>Monteleone di Fermo</comune>
													<comune>Montelparo</comune>
													<comune>Montemonaco</comune>
													<comune>Monteprandone</comune>
													<comune>Monterubbiano</comune>
													<comune>Montottone</comune>
													<comune>Moresco</comune>
													<comune>Offida</comune>
													<comune>Ortezzano</comune>
													<comune>Palmiano</comune>
													<comune>Pedaso</comune>
													<comune>Petritoli</comune>
													<comune>Ponzano di Fermo</comune>
													<comune>Porto San Giorgio</comune>
													<comune>Porto Sant'Elpidio</comune>
													<comune>Rapagnano</comune>
													<comune>Ripatransone</comune>
													<comune>Roccafluvione</comune>
													<comune>Rotella</comune>
													<comune>San Benedetto del Tronto</comune>
													<comune>Sant'Elpidio a Mare</comune>
													<comune>Santa Vittoria in Matenano</comune>
													<comune>Servigliano</comune>
													<comune>Smerillo</comune>
													<comune>Spinetoli</comune>
													<comune>Torre San Patrizio</comune>
													<comune>Venarotta</comune>
												</comuni>
											</prov>
											<prov>
												<code>AT</code>
												<name>ASTI</name>
												<region>PIEMONTE</region>
												<comuni>
													<comune>Agliano Terme</comune>
													<comune>Albugnano</comune>
													<comune>Antignano</comune>
													<comune>Aramengo</comune>
													<comune>Asti</comune>
													<comune>Azzano d'Asti</comune>
													<comune>Baldichieri d'Asti</comune>
													<comune>Belveglio</comune>
													<comune>Berzano di San Pietro</comune>
													<comune>Bruno</comune>
													<comune>Bubbio</comune>
													<comune>Buttigliera d'Asti</comune>
													<comune>Calamandrana</comune>
													<comune>Calliano</comune>
													<comune>Calosso</comune>
													<comune>Camerano Casasco</comune>
													<comune>Canelli</comune>
													<comune>Cantarana</comune>
													<comune>Capriglio</comune>
													<comune>Casorzo</comune>
													<comune>Cassinasco</comune>
													<comune>Castagnole Monferrato</comune>
													<comune>Castagnole delle Lanze</comune>
													<comune>Castel Boglione</comune>
													<comune>Castel Rocchero</comune>
													<comune>Castell'Alfero</comune>
													<comune>Castellero</comune>
													<comune>Castelletto Molina</comune>
													<comune>Castello di Annone</comune>
													<comune>Castelnuovo Belbo</comune>
													<comune>Castelnuovo Calcea</comune>
													<comune>Castelnuovo Don Bosco</comune>
													<comune>Cellarengo</comune>
													<comune>Celle Enomondo</comune>
													<comune>Cerreto d'Asti</comune>
													<comune>Cerro Tanaro</comune>
													<comune>Cessole</comune>
													<comune>Chiusano d'Asti</comune>
													<comune>Cinaglio</comune>
													<comune>Cisterna d'Asti</comune>
													<comune>Coazzolo</comune>
													<comune>Cocconato</comune>
													<comune>Corsione</comune>
													<comune>Cortandone</comune>
													<comune>Cortanze</comune>
													<comune>Cortazzone</comune>
													<comune>Cortiglione</comune>
													<comune>Cossombrato</comune>
													<comune>Costigliole d'Asti</comune>
													<comune>Cunico</comune>
													<comune>Dusino San Michele</comune>
													<comune>Ferrere</comune>
													<comune>Fontanile</comune>
													<comune>Frinco</comune>
													<comune>Grana</comune>
													<comune>Grazzano Badoglio</comune>
													<comune>Incisa Scapaccino</comune>
													<comune>Isola d'Asti</comune>
													<comune>Loazzolo</comune>
													<comune>Maranzana</comune>
													<comune>Maretto</comune>
													<comune>Moasca</comune>
													<comune>Mombaldone</comune>
													<comune>Mombaruzzo</comune>
													<comune>Mombercelli</comune>
													<comune>Monale</comune>
													<comune>Monastero Bormida</comune>
													<comune>Moncalvo</comune>
													<comune>Moncucco Torinese</comune>
													<comune>Mongardino</comune>
													<comune>Montabone</comune>
													<comune>Montafia</comune>
													<comune>Montaldo Scarampi</comune>
													<comune>Montechiaro d'Asti</comune>
													<comune>Montegrosso d'Asti</comune>
													<comune>Montemagno</comune>
													<comune>Montiglio Monferrato</comune>
													<comune>Moransengo</comune>
													<comune>Nizza Monferrato</comune>
													<comune>Olmo Gentile</comune>
													<comune>Passerano Marmorito</comune>
													<comune>Penango</comune>
													<comune>Piea</comune>
													<comune>Pino d'Asti</comune>
													<comune>Piovà Massaia</comune>
													<comune>Portacomaro</comune>
													<comune>Quaranti</comune>
													<comune>Refrancore</comune>
													<comune>Revigliasco d'Asti</comune>
													<comune>Roatto</comune>
													<comune>Robella</comune>
													<comune>Rocca d'Arazzo</comune>
													<comune>Roccaverano</comune>
													<comune>Rocchetta Palafea</comune>
													<comune>Rocchetta Tanaro</comune>
													<comune>San Damiano d'Asti</comune>
													<comune>San Giorgio Scarampi</comune>
													<comune>San Martino Alfieri</comune>
													<comune>San Marzano Oliveto</comune>
													<comune>San Paolo Solbrito</comune>
													<comune>Scurzolengo</comune>
													<comune>Serole</comune>
													<comune>Sessame</comune>
													<comune>Settime</comune>
													<comune>Soglio</comune>
													<comune>Tigliole</comune>
													<comune>Tonco</comune>
													<comune>Tonengo</comune>
													<comune>Vaglio Serra</comune>
													<comune>Valfenera</comune>
													<comune>Vesime</comune>
													<comune>Viale</comune>
													<comune>Viarigi</comune>
													<comune>Vigliano d'Asti</comune>
													<comune>Villa San Secondo</comune>
													<comune>Villafranca d'Asti</comune>
													<comune>Villanova d'Asti</comune>
													<comune>Vinchio</comune>
												</comuni>
											</prov>
											<prov>
												<code>AV</code>
												<name>AVELLINO</name>
												<region>CALABRIA</region>
												<comuni>
													<comune>Aiello del Sabato</comune>
													<comune>Altavilla Irpina</comune>
													<comune>Andretta</comune>
													<comune>Aquilonia</comune>
													<comune>Ariano Irpino</comune>
													<comune>Atripalda</comune>
													<comune>Avella</comune>
													<comune>Avellino</comune>
													<comune>Bagnoli Irpino</comune>
													<comune>Baiano</comune>
													<comune>Bisaccia</comune>
													<comune>Bonito</comune>
													<comune>Cairano</comune>
													<comune>Calabritto</comune>
													<comune>Calitri</comune>
													<comune>Candida</comune>
													<comune>Caposele</comune>
													<comune>Capriglia Irpina</comune>
													<comune>Carife</comune>
													<comune>Casalbore</comune>
													<comune>Cassano Irpino</comune>
													<comune>Castel Baronia</comune>
													<comune>Castelfranci</comune>
													<comune>Castelvetere sul Calore</comune>
													<comune>Cervinara</comune>
													<comune>Cesinali</comune>
													<comune>Chianche</comune>
													<comune>Chiusano di San Domenico</comune>
													<comune>Contrada</comune>
													<comune>Conza della Campania</comune>
													<comune>Domicella</comune>
													<comune>Flumeri</comune>
													<comune>Fontanarosa</comune>
													<comune>Forino</comune>
													<comune>Frigento</comune>
													<comune>Gesualdo</comune>
													<comune>Greci</comune>
													<comune>Grottaminarda</comune>
													<comune>Grottolella</comune>
													<comune>Guardia Lombardi</comune>
													<comune>Lacedonia</comune>
													<comune>Lapio</comune>
													<comune>Lauro</comune>
													<comune>Lioni</comune>
													<comune>Luogosano</comune>
													<comune>Manocalzati</comune>
													<comune>Marzano di Nola</comune>
													<comune>Melito Irpino</comune>
													<comune>Mercogliano</comune>
													<comune>Mirabella Eclano</comune>
													<comune>Montaguto</comune>
													<comune>Montecalvo Irpino</comune>
													<comune>Montefalcione</comune>
													<comune>Monteforte Irpino</comune>
													<comune>Montefredane</comune>
													<comune>Montefusco</comune>
													<comune>Montella</comune>
													<comune>Montemarano</comune>
													<comune>Montemiletto</comune>
													<comune>Monteverde</comune>
													<comune>Montoro Inferiore</comune>
													<comune>Montoro Superiore</comune>
													<comune>Morra De Sanctis</comune>
													<comune>Moschiano</comune>
													<comune>Mugnano del Cardinale</comune>
													<comune>Nusco</comune>
													<comune>Ospedaletto d'Alpinolo</comune>
													<comune>Pago del Vallo di Lauro</comune>
													<comune>Parolise</comune>
													<comune>Paternopoli</comune>
													<comune>Petruro Irpino</comune>
													<comune>Pietradefusi</comune>
													<comune>Pietrastornina</comune>
													<comune>Prata di Principato Ultra</comune>
													<comune>Pratola Serra</comune>
													<comune>Quadrelle</comune>
													<comune>Quindici</comune>
													<comune>Rocca San Felice</comune>
													<comune>Roccabascerana</comune>
													<comune>Rotondi</comune>
													<comune>Salza Irpina</comune>
													<comune>San Mango sul Calore</comune>
													<comune>San Martino Valle Caudina</comune>
													<comune>San Michele di Serino</comune>
													<comune>San Nicola Baronia</comune>
													<comune>San Potito Ultra</comune>
													<comune>San Sossio Baronia</comune>
													<comune>Sant'Andrea di Conza</comune>
													<comune>Sant'Angelo a Scala</comune>
													<comune>Sant'Angelo all'Esca</comune>
													<comune>Sant'Angelo dei Lombardi</comune>
													<comune>Santa Lucia di Serino</comune>
													<comune>Santa Paolina</comune>
													<comune>Santo Stefano del Sole</comune>
													<comune>Savignano Irpino</comune>
													<comune>Scampitella</comune>
													<comune>Senerchia</comune>
													<comune>Serino</comune>
													<comune>Sirignano</comune>
													<comune>Solofra</comune>
													<comune>Sorbo Serpico</comune>
													<comune>Sperone</comune>
													<comune>Sturno</comune>
													<comune>Summonte</comune>
													<comune>Taurano</comune>
													<comune>Taurasi</comune>
													<comune>Teora</comune>
													<comune>Torella dei Lombardi</comune>
													<comune>Torre Le Nocelle</comune>
													<comune>Torrioni</comune>
													<comune>Trevico</comune>
													<comune>Tufo</comune>
													<comune>Vallata</comune>
													<comune>Vallesaccarda</comune>
													<comune>Venticano</comune>
													<comune>Villamaina</comune>
													<comune>Villanova del Battista</comune>
													<comune>Volturara Irpina</comune>
													<comune>Zungoli</comune>
												</comuni>
											</prov>
											<prov>
												<code>BA</code>
												<name>BARI</name>
												<region>PUGLIA</region>
												<comuni>
													<comune>Acquaviva delle Fonti</comune>
													<comune>Adelfia</comune>
													<comune>Alberobello</comune>
													<comune>Altamura</comune>
													<comune>Andria</comune>
													<comune>Bari</comune>
													<comune>Barletta</comune>
													<comune>Binetto</comune>
													<comune>Bisceglie</comune>
													<comune>Bitetto</comune>
													<comune>Bitonto</comune>
													<comune>Bitritto</comune>
													<comune>Canosa di Puglia</comune>
													<comune>Capurso</comune>
													<comune>Casamassima</comune>
													<comune>Cassano delle Murge</comune>
													<comune>Castellana Grotte</comune>
													<comune>Cellamare</comune>
													<comune>Conversano</comune>
													<comune>Corato</comune>
													<comune>Gioia del Colle</comune>
													<comune>Giovinazzo</comune>
													<comune>Gravina in Puglia</comune>
													<comune>Grumo Appula</comune>
													<comune>Locorotondo</comune>
													<comune>Minervino Murge</comune>
													<comune>Modugno</comune>
													<comune>Mola di Bari</comune>
													<comune>Molfetta</comune>
													<comune>Monopoli</comune>
													<comune>Noci</comune>
													<comune>Noicàttaro</comune>
													<comune>Palo del Colle</comune>
													<comune>Poggiorsini</comune>
													<comune>Polignano a Mare</comune>
													<comune>Putignano</comune>
													<comune>Rutigliano</comune>
													<comune>Ruvo di Puglia</comune>
													<comune>Sammichele di Bari</comune>
													<comune>Sannicandro di Bari</comune>
													<comune>Santeramo in Colle</comune>
													<comune>Spinazzola</comune>
													<comune>Terlizzi</comune>
													<comune>Toritto</comune>
													<comune>Trani</comune>
													<comune>Triggiano</comune>
													<comune>Turi</comune>
													<comune>Valenzano</comune>
												</comuni>
											</prov>
											<prov>
												<code>BL</code>
												<name>BELLUNO</name>
												<region>VENETO</region>
												<comuni>
													<comune>Agordo</comune>
													<comune>Alano di Piave</comune>
													<comune>Alleghe</comune>
													<comune>Arsià</comune>
													<comune>Auronzo di Cadore</comune>
													<comune>Belluno</comune>
													<comune>Borca di Cadore</comune>
													<comune>Calalzo di Cadore</comune>
													<comune>Canale d'Agordo</comune>
													<comune>Castellavazzo</comune>
													<comune>Cencenighe Agordino</comune>
													<comune>Cesiomaggiore</comune>
													<comune>Chies d'Alpago</comune>
													<comune>Cibiana di Cadore</comune>
													<comune>Colle Santa Lucia</comune>
													<comune>Comelico Superiore</comune>
													<comune>Cortina d'Ampezzo</comune>
													<comune>Danta di Cadore</comune>
													<comune>Domegge di Cadore</comune>
													<comune>Falcade</comune>
													<comune>Farra d'Alpago</comune>
													<comune>Feltre</comune>
													<comune>Fonzaso</comune>
													<comune>Forno di Zoldo</comune>
													<comune>Gosaldo</comune>
													<comune>La Valle Agordina</comune>
													<comune>Lamon</comune>
													<comune>Lentiai</comune>
													<comune>Limana</comune>
													<comune>Livinallongo del Col di Lana</comune>
													<comune>Longarone</comune>
													<comune>Lorenzago di Cadore</comune>
													<comune>Lozzo di Cadore</comune>
													<comune>Mel</comune>
													<comune>Ospitale di Cadore</comune>
													<comune>Pedavena</comune>
													<comune>Perarolo di Cadore</comune>
													<comune>Pieve d'Alpago</comune>
													<comune>Pieve di Cadore</comune>
													<comune>Ponte nelle Alpi</comune>
													<comune>Puos d'Alpago</comune>
													<comune>Quero</comune>
													<comune>Rivamonte Agordino</comune>
													<comune>Rocca Pietore</comune>
													<comune>San Gregorio nelle Alpi</comune>
													<comune>San Nicolà di Comelico</comune>
													<comune>San Pietro di Cadore</comune>
													<comune>San Tomaso Agordino</comune>
													<comune>San Vito di Cadore</comune>
													<comune>Santa Giustina</comune>
													<comune>Santo Stefano di Cadore</comune>
													<comune>Sappada</comune>
													<comune>Sedico</comune>
													<comune>Selva di Cadore</comune>
													<comune>Seren del Grappa</comune>
													<comune>Sospirolo</comune>
													<comune>Soverzene</comune>
													<comune>Sovramonte</comune>
													<comune>Taibon Agordino</comune>
													<comune>Tambre</comune>
													<comune>Trichiana</comune>
													<comune>Vallada Agordina</comune>
													<comune>Valle di Cadore</comune>
													<comune>Vas</comune>
													<comune>Vigo di Cadore</comune>
													<comune>Vodo Cadore</comune>
													<comune>Voltago Agordino</comune>
													<comune>Zoldo Alto</comune>
													<comune>Zoppà di Cadore</comune>
												</comuni>
											</prov>
											<prov>
												<code>BN</code>
												<name>BENEVENTO</name>
												<region>CALABRIA</region>
												<comuni>
													<comune>Airola</comune>
													<comune>Amorosi</comune>
													<comune>Apice</comune>
													<comune>Apollosa</comune>
													<comune>Arpaia</comune>
													<comune>Arpaise</comune>
													<comune>Baselice</comune>
													<comune>Benevento</comune>
													<comune>Bonea</comune>
													<comune>Bucciano</comune>
													<comune>Buonalbergo</comune>
													<comune>Calvi</comune>
													<comune>Campolattaro</comune>
													<comune>Campoli del Monte Taburno</comune>
													<comune>Casalduni</comune>
													<comune>Castelfranco in Miscano</comune>
													<comune>Castelpagano</comune>
													<comune>Castelpoto</comune>
													<comune>Castelvenere</comune>
													<comune>Castelvetere in Val Fortore</comune>
													<comune>Cautano</comune>
													<comune>Ceppaloni</comune>
													<comune>Cerreto Sannita</comune>
													<comune>Circello</comune>
													<comune>Colle Sannita</comune>
													<comune>Cusano Mutri</comune>
													<comune>Dugenta</comune>
													<comune>Durazzano</comune>
													<comune>Faicchio</comune>
													<comune>Foglianise</comune>
													<comune>Foiano di Val Fortore</comune>
													<comune>Forchia</comune>
													<comune>Fragneto L'Abate</comune>
													<comune>Fragneto Monforte</comune>
													<comune>Frasso Telesino</comune>
													<comune>Ginestra degli Schiavoni</comune>
													<comune>Guardia Sanframondi</comune>
													<comune>Limatola</comune>
													<comune>Melizzano</comune>
													<comune>Moiano</comune>
													<comune>Molinara</comune>
													<comune>Montefalcone di Val Fortore</comune>
													<comune>Montesarchio</comune>
													<comune>Morcone</comune>
													<comune>Paduli</comune>
													<comune>Pago Veiano</comune>
													<comune>Pannarano</comune>
													<comune>Paolisi</comune>
													<comune>Paupisi</comune>
													<comune>Pesco Sannita</comune>
													<comune>Pietraroja</comune>
													<comune>Pietrelcina</comune>
													<comune>Ponte</comune>
													<comune>Pontelandolfo</comune>
													<comune>Puglianello</comune>
													<comune>Reino</comune>
													<comune>San Bartolomeo in Galdo</comune>
													<comune>San Giorgio La Molara</comune>
													<comune>San Giorgio del Sannio</comune>
													<comune>San Leucio del Sannio</comune>
													<comune>San Lorenzello</comune>
													<comune>San Lorenzo Maggiore</comune>
													<comune>San Lupo</comune>
													<comune>San Marco dei Cavoti</comune>
													<comune>San Martino Sannita</comune>
													<comune>San Nazzaro</comune>
													<comune>San Nicola Manfredi</comune>
													<comune>San Salvatore Telesino</comune>
													<comune>Sant'Agata De' Goti</comune>
													<comune>Sant'Angelo a Cupolo</comune>
													<comune>Sant'Arcangelo Trimonte</comune>
													<comune>Santa Croce del Sannio</comune>
													<comune>Sassinoro</comune>
													<comune>Solopaca</comune>
													<comune>Telese Terme</comune>
													<comune>Tocco Caudio</comune>
													<comune>Torrecuso</comune>
													<comune>Vitulano</comune>
												</comuni>
											</prov>
											<prov>
												<code>BG</code>
												<name>BERGAMO</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Adrara San Martino</comune>
													<comune>Adrara San Rocco</comune>
													<comune>Albano Sant'Alessandro</comune>
													<comune>Albino</comune>
													<comune>Algua</comune>
													<comune>Almenno San Bartolomeo</comune>
													<comune>Almenno San Salvatore</comune>
													<comune>Almè</comune>
													<comune>Alzano Lombardo</comune>
													<comune>Ambivere</comune>
													<comune>Antegnate</comune>
													<comune>Arcene</comune>
													<comune>Ardesio</comune>
													<comune>Arzago d'Adda</comune>
													<comune>Averara</comune>
													<comune>Aviatico</comune>
													<comune>Azzano San Paolo</comune>
													<comune>Azzone</comune>
													<comune>Bagnatica</comune>
													<comune>Barbata</comune>
													<comune>Bariano</comune>
													<comune>Barzana</comune>
													<comune>Bedulita</comune>
													<comune>Berbenno</comune>
													<comune>Bergamo</comune>
													<comune>Berzo San Fermo</comune>
													<comune>Bianzano</comune>
													<comune>Blello</comune>
													<comune>Bolgare</comune>
													<comune>Boltiere</comune>
													<comune>Bonate Sopra</comune>
													<comune>Bonate Sotto</comune>
													<comune>Borgo di Terzo</comune>
													<comune>Bossico</comune>
													<comune>Bottanuco</comune>
													<comune>Bracca</comune>
													<comune>Branzi</comune>
													<comune>Brembate</comune>
													<comune>Brembate di Sopra</comune>
													<comune>Brembilla</comune>
													<comune>Brignano Gera d'Adda</comune>
													<comune>Brumano</comune>
													<comune>Brusaporto</comune>
													<comune>Calcinate</comune>
													<comune>Calcio</comune>
													<comune>Calusco d'Adda</comune>
													<comune>Calvenzano</comune>
													<comune>Camerata Cornello</comune>
													<comune>Canonica d'Adda</comune>
													<comune>Capizzone</comune>
													<comune>Capriate San Gervasio</comune>
													<comune>Caprino Bergamasco</comune>
													<comune>Caravaggio</comune>
													<comune>Carobbio degli Angeli</comune>
													<comune>Carona</comune>
													<comune>Carvico</comune>
													<comune>Casazza</comune>
													<comune>Casirate d'Adda</comune>
													<comune>Casnigo</comune>
													<comune>Cassiglio</comune>
													<comune>Castel Rozzone</comune>
													<comune>Castelli Calepio</comune>
													<comune>Castione della Presolana</comune>
													<comune>Castro</comune>
													<comune>Cavernago</comune>
													<comune>Cazzano Sant'Andrea</comune>
													<comune>Cenate Sopra</comune>
													<comune>Cenate Sotto</comune>
													<comune>Cene</comune>
													<comune>Cerete</comune>
													<comune>Chignolo d'Isola</comune>
													<comune>Chiuduno</comune>
													<comune>Cisano Bergamasco</comune>
													<comune>Ciserano</comune>
													<comune>Cividate al Piano</comune>
													<comune>Clusone</comune>
													<comune>Colere</comune>
													<comune>Cologno al Serio</comune>
													<comune>Colzate</comune>
													<comune>Comun Nuovo</comune>
													<comune>Corna Imagna</comune>
													<comune>Cornalba</comune>
													<comune>Cortenuova</comune>
													<comune>Costa Serina</comune>
													<comune>Costa Valle Imagna</comune>
													<comune>Costa Volpino</comune>
													<comune>Costa di Mezzate</comune>
													<comune>Covo</comune>
													<comune>Credaro</comune>
													<comune>Curno</comune>
													<comune>Cusio</comune>
													<comune>Dalmine</comune>
													<comune>Dossena</comune>
													<comune>Endine Gaiano</comune>
													<comune>Entratico</comune>
													<comune>Fara Gera d'Adda</comune>
													<comune>Fara Olivana con Sola</comune>
													<comune>Filago</comune>
													<comune>Fino del Monte</comune>
													<comune>Fiorano al Serio</comune>
													<comune>Fontanella</comune>
													<comune>Fonteno</comune>
													<comune>Foppolo</comune>
													<comune>Foresto Sparso</comune>
													<comune>Fornovo San Giovanni</comune>
													<comune>Fuipiano Valle Imagna</comune>
													<comune>Gandellino</comune>
													<comune>Gandino</comune>
													<comune>Gandosso</comune>
													<comune>Gaverina Terme</comune>
													<comune>Gazzaniga</comune>
													<comune>Gerosa</comune>
													<comune>Ghisalba</comune>
													<comune>Gorlago</comune>
													<comune>Gorle</comune>
													<comune>Gorno</comune>
													<comune>Grassobbio</comune>
													<comune>Gromo</comune>
													<comune>Grone</comune>
													<comune>Grumello del Monte</comune>
													<comune>Isola di Fondra</comune>
													<comune>Isso</comune>
													<comune>Lallio</comune>
													<comune>Leffe</comune>
													<comune>Lenna</comune>
													<comune>Levate</comune>
													<comune>Locatello</comune>
													<comune>Lovere</comune>
													<comune>Lurano</comune>
													<comune>Luzzana</comune>
													<comune>Madone</comune>
													<comune>Mapello</comune>
													<comune>Martinengo</comune>
													<comune>Medolago</comune>
													<comune>Mezzoldo</comune>
													<comune>Misano di Gera d'Adda</comune>
													<comune>Moio de' Calvi</comune>
													<comune>Monasterolo del Castello</comune>
													<comune>Montello</comune>
													<comune>Morengo</comune>
													<comune>Mornico al Serio</comune>
													<comune>Mozzanica</comune>
													<comune>Mozzo</comune>
													<comune>Nembro</comune>
													<comune>Olmo al Brembo</comune>
													<comune>Oltre il Colle</comune>
													<comune>Oltressenda Alta</comune>
													<comune>Oneta</comune>
													<comune>Onore</comune>
													<comune>Orio al Serio</comune>
													<comune>Ornica</comune>
													<comune>Osio Sopra</comune>
													<comune>Osio Sotto</comune>
													<comune>Pagazzano</comune>
													<comune>Paladina</comune>
													<comune>Palazzago</comune>
													<comune>Palosco</comune>
													<comune>Parre</comune>
													<comune>Parzanica</comune>
													<comune>Pedrengo</comune>
													<comune>Peia</comune>
													<comune>Pianico</comune>
													<comune>Piario</comune>
													<comune>Piazza Brembana</comune>
													<comune>Piazzatorre</comune>
													<comune>Piazzolo</comune>
													<comune>Pognano</comune>
													<comune>Ponte Nossa</comune>
													<comune>Ponte San Pietro</comune>
													<comune>Ponteranica</comune>
													<comune>Pontida</comune>
													<comune>Pontirolo Nuovo</comune>
													<comune>Pradalunga</comune>
													<comune>Predore</comune>
													<comune>Premolo</comune>
													<comune>Presezzo</comune>
													<comune>Pumenengo</comune>
													<comune>Ranica</comune>
													<comune>Ranzanico</comune>
													<comune>Riva di Solto</comune>
													<comune>Rogno</comune>
													<comune>Romano di Lombardia</comune>
													<comune>Roncobello</comune>
													<comune>Roncola</comune>
													<comune>Rota d'Imagna</comune>
													<comune>Rovetta</comune>
													<comune>San Giovanni Bianco</comune>
													<comune>San Paolo d'Argon</comune>
													<comune>San Pellegrino Terme</comune>
													<comune>Sant'Omobono Terme</comune>
													<comune>Santa Brigida</comune>
													<comune>Sarnico</comune>
													<comune>Scanzorosciate</comune>
													<comune>Schilpario</comune>
													<comune>Sedrina</comune>
													<comune>Selvino</comune>
													<comune>Seriate</comune>
													<comune>Serina</comune>
													<comune>Solto Collina</comune>
													<comune>Solza</comune>
													<comune>Songavazzo</comune>
													<comune>Sorisole</comune>
													<comune>Sotto il Monte Giovanni XXIII</comune>
													<comune>Sovere</comune>
													<comune>Spinone al Lago</comune>
													<comune>Spirano</comune>
													<comune>Stezzano</comune>
													<comune>Strozza</comune>
													<comune>Suisio</comune>
													<comune>Taleggio</comune>
													<comune>Tavernola Bergamasca</comune>
													<comune>Telgate</comune>
													<comune>Terno d'Isola</comune>
													<comune>Torre Boldone</comune>
													<comune>Torre Pallavicina</comune>
													<comune>Torre de' Roveri</comune>
													<comune>Trescore Balneario</comune>
													<comune>Treviglio</comune>
													<comune>Treviolo</comune>
													<comune>Ubiale Clanezzo</comune>
													<comune>Urgnano</comune>
													<comune>Valbondione</comune>
													<comune>Valbrembo</comune>
													<comune>Valgoglio</comune>
													<comune>Valleve</comune>
													<comune>Valnegra</comune>
													<comune>Valsecca</comune>
													<comune>Valtorta</comune>
													<comune>Vedeseta</comune>
													<comune>Verdellino</comune>
													<comune>Verdello</comune>
													<comune>Vertova</comune>
													<comune>Viadanica</comune>
													<comune>Vigano San Martino</comune>
													<comune>Vigolo</comune>
													<comune>Villa d'Adda</comune>
													<comune>Villa d'Almà</comune>
													<comune>Villa d'Ogna</comune>
													<comune>Villa di Serio</comune>
													<comune>Villongo</comune>
													<comune>Vilminore di Scalve</comune>
													<comune>Zandobbio</comune>
													<comune>Zanica</comune>
													<comune>Zogno</comune>
												</comuni>
											</prov>
											<prov>
												<code>BI</code>
												<name>BIELLA</name>
												<region>PIEMONTE</region>
												<comuni>
													<comune>Ailoche</comune>
													<comune>Andorno Micca</comune>
													<comune>Benna</comune>
													<comune>Biella</comune>
													<comune>Bioglio</comune>
													<comune>Borriana</comune>
													<comune>Brusnengo</comune>
													<comune>Callabiana</comune>
													<comune>Camandona</comune>
													<comune>Camburzano</comune>
													<comune>Campiglia Cervo</comune>
													<comune>Candelo</comune>
													<comune>Caprile</comune>
													<comune>Casapinta</comune>
													<comune>Castelletto Cervo</comune>
													<comune>Cavaglià</comune>
													<comune>Cerreto Castello</comune>
													<comune>Cerrione</comune>
													<comune>Coggiola</comune>
													<comune>Cossato</comune>
													<comune>Crevacuore</comune>
													<comune>Crosa</comune>
													<comune>Curino</comune>
													<comune>Donato</comune>
													<comune>Dorzano</comune>
													<comune>Gaglianico</comune>
													<comune>Gifflenga</comune>
													<comune>Graglia</comune>
													<comune>Lessona</comune>
													<comune>Magnano</comune>
													<comune>Massazza</comune>
													<comune>Masserano</comune>
													<comune>Mezzana Mortigliengo</comune>
													<comune>Miagliano</comune>
													<comune>Mongrando</comune>
													<comune>Mosso</comune>
													<comune>Mottalciata</comune>
													<comune>Muzzano</comune>
													<comune>Netro</comune>
													<comune>Occhieppo Inferiore</comune>
													<comune>Occhieppo Superiore</comune>
													<comune>Pettinengo</comune>
													<comune>Piatto</comune>
													<comune>Piedicavallo</comune>
													<comune>Pollone</comune>
													<comune>Ponderano</comune>
													<comune>Portula</comune>
													<comune>Pralungo</comune>
													<comune>Pray</comune>
													<comune>Quaregna</comune>
													<comune>Quittengo</comune>
													<comune>Ronco Biellese</comune>
													<comune>Roppolo</comune>
													<comune>Rosazza</comune>
													<comune>Sagliano Micca</comune>
													<comune>Sala Biellese</comune>
													<comune>Salussola</comune>
													<comune>San Paolo Cervo</comune>
													<comune>Sandigliano</comune>
													<comune>Selve Marcone</comune>
													<comune>Soprana</comune>
													<comune>Sordevolo</comune>
													<comune>Sostegno</comune>
													<comune>Strona</comune>
													<comune>Tavigliano</comune>
													<comune>Ternengo</comune>
													<comune>Tollegno</comune>
													<comune>Torrazzo</comune>
													<comune>Trivero</comune>
													<comune>Valdengo</comune>
													<comune>Vallanzengo</comune>
													<comune>Valle Mosso</comune>
													<comune>Valle San Nicolao</comune>
													<comune>Veglio</comune>
													<comune>Verrone</comune>
													<comune>Vigliano Biellese</comune>
													<comune>Villa del Bosco</comune>
													<comune>Villanova Biellese</comune>
													<comune>Viverone</comune>
													<comune>Zimone</comune>
													<comune>Zubiena</comune>
													<comune>Zumaglia</comune>
												</comuni>
											</prov>
											<prov>
												<code>BO</code>
												<name>BOLOGNA</name>
												<region>EMILIA ROMAGNA</region>
												<comuni>
													<comune>Anzola dell'Emilia</comune>
													<comune>Argelato</comune>
													<comune>Baricella</comune>
													<comune>Bazzano</comune>
													<comune>Bentivoglio</comune>
													<comune>Bologna</comune>
													<comune>Borgo Tossignano</comune>
													<comune>Budrio</comune>
													<comune>Calderara di Reno</comune>
													<comune>Camugnano</comune>
													<comune>Casalecchio di Reno</comune>
													<comune>Casalfiumanese</comune>
													<comune>Castel Guelfo di Bologna</comune>
													<comune>Castel Maggiore</comune>
													<comune>Castel San Pietro Terme</comune>
													<comune>Castel d'Aiano</comune>
													<comune>Castel del Rio</comune>
													<comune>Castel di Casio</comune>
													<comune>Castello d'Argile</comune>
													<comune>Castello di Serravalle</comune>
													<comune>Castenaso</comune>
													<comune>Castiglione dei Pepoli</comune>
													<comune>Crespellano</comune>
													<comune>Crevalcore</comune>
													<comune>Dozza</comune>
													<comune>Fontanelice</comune>
													<comune>Gaggio Montano</comune>
													<comune>Galliera</comune>
													<comune>Granaglione</comune>
													<comune>Granarolo dell'Emilia</comune>
													<comune>Grizzana Morandi</comune>
													<comune>Imola</comune>
													<comune>Lizzano in Belvedere</comune>
													<comune>Loiano</comune>
													<comune>Malalbergo</comune>
													<comune>Marzabotto</comune>
													<comune>Medicina</comune>
													<comune>Minerbio</comune>
													<comune>Molinella</comune>
													<comune>Monghidoro</comune>
													<comune>Monte San Pietro</comune>
													<comune>Monterenzio</comune>
													<comune>Monteveglio</comune>
													<comune>Monzuno</comune>
													<comune>Mordano</comune>
													<comune>Ozzano dell'Emilia</comune>
													<comune>Pianoro</comune>
													<comune>Pieve di Cento</comune>
													<comune>Porretta Terme</comune>
													<comune>Sala Bolognese</comune>
													<comune>San Benedetto Val di Sambro</comune>
													<comune>San Giorgio di Piano</comune>
													<comune>San Giovanni in Persiceto</comune>
													<comune>San Lazzaro di Savena</comune>
													<comune>San Pietro in Casale</comune>
													<comune>Sant'Agata Bolognese</comune>
													<comune>Sasso Marconi</comune>
													<comune>Savigno</comune>
													<comune>Vergato</comune>
													<comune>Zola Predosa</comune>
												</comuni>
											</prov>
											<prov>
												<code>BZ</code>
												<name>BOLZANO</name>
												<region>TRENTINO ALTO ADIGE</region>
												<comuni>
													<comune>Aldino</comune>
													<comune>Andriano</comune>
													<comune>Anterivo</comune>
													<comune>Appiano sulla Strada del Vino</comune>
													<comune>Avelengo</comune>
													<comune>Badia</comune>
													<comune>Barbiano</comune>
													<comune>Bolzano</comune>
													<comune>Braies</comune>
													<comune>Brennero</comune>
													<comune>Bressanone</comune>
													<comune>Bronzolo</comune>
													<comune>Brunico</comune>
													<comune>Caines</comune>
													<comune>Caldaro sulla Strada del Vino</comune>
													<comune>Campo Tures</comune>
													<comune>Campo di Trens</comune>
													<comune>Castelbello Ciardes</comune>
													<comune>Castelrotto</comune>
													<comune>Cermes</comune>
													<comune>Chienes</comune>
													<comune>Chiusa</comune>
													<comune>Cornedo all'Isarco</comune>
													<comune>Cortaccia sulla Strada del Vino</comune>
													<comune>Cortina sulla Strada del Vino</comune>
													<comune>Corvara in Badia</comune>
													<comune>Curon Venosta</comune>
													<comune>Dobbiaco</comune>
													<comune>Egna</comune>
													<comune>Falzes</comune>
													<comune>Fià allo Sciliar</comune>
													<comune>Fortezza</comune>
													<comune>Funes</comune>
													<comune>Gais</comune>
													<comune>Gargazzone</comune>
													<comune>Glorenza</comune>
													<comune>La Valle</comune>
													<comune>Laces</comune>
													<comune>Lagundo</comune>
													<comune>Laion</comune>
													<comune>Laives</comune>
													<comune>Lana</comune>
													<comune>Lasa</comune>
													<comune>Lauregno</comune>
													<comune>Luson</comune>
													<comune>Magrà sulla Strada del Vino</comune>
													<comune>Malles Venosta</comune>
													<comune>Marebbe</comune>
													<comune>Marlengo</comune>
													<comune>Martello</comune>
													<comune>Meltina</comune>
													<comune>Merano</comune>
													<comune>Monguelfo</comune>
													<comune>Montagna</comune>
													<comune>Moso in Passiria</comune>
													<comune>Nalles</comune>
													<comune>Naturno</comune>
													<comune>Naz-Sciaves</comune>
													<comune>Nova Levante</comune>
													<comune>Nova Ponente</comune>
													<comune>Ora</comune>
													<comune>Ortisei</comune>
													<comune>Parcines</comune>
													<comune>Perca</comune>
													<comune>Plaus</comune>
													<comune>Ponte Gardena</comune>
													<comune>Postal</comune>
													<comune>Prato allo Stelvio</comune>
													<comune>Predoi</comune>
													<comune>Proves</comune>
													<comune>Racines</comune>
													<comune>Rasun Anterselva</comune>
													<comune>Renon</comune>
													<comune>Rifiano</comune>
													<comune>Rio di Pusteria</comune>
													<comune>Rodengo</comune>
													<comune>Salorno</comune>
													<comune>San Candido</comune>
													<comune>San Genesio Atesino</comune>
													<comune>San Leonardo in Passiria</comune>
													<comune>San Lorenzo di Sebato</comune>
													<comune>San Martino in Badia</comune>
													<comune>San Martino in Passiria</comune>
													<comune>San Pancrazio</comune>
													<comune>Santa Cristina Valgardena</comune>
													<comune>Sarentino</comune>
													<comune>Scena</comune>
													<comune>Selva dei Molini</comune>
													<comune>Selva di Val Gardena</comune>
													<comune>Senale-San Felice</comune>
													<comune>Senales</comune>
													<comune>Sesto</comune>
													<comune>Silandro</comune>
													<comune>Sluderno</comune>
													<comune>Stelvio</comune>
													<comune>Terento</comune>
													<comune>Terlano</comune>
													<comune>Termeno sulla Strada del Vino</comune>
													<comune>Tesimo</comune>
													<comune>Tires</comune>
													<comune>Tirolo</comune>
													<comune>Trodena</comune>
													<comune>Tubre</comune>
													<comune>Ultimo</comune>
													<comune>Vadena</comune>
													<comune>Val di Vizze</comune>
													<comune>Valdaora</comune>
													<comune>Valle Aurina</comune>
													<comune>Valle di Casies</comune>
													<comune>Vandoies</comune>
													<comune>Varna</comune>
													<comune>Velturno</comune>
													<comune>Verano</comune>
													<comune>Villabassa</comune>
													<comune>Villandro</comune>
													<comune>Vipiteno</comune>
												</comuni>
											</prov>
											<prov>
												<code>BS</code>
												<name>BRESCIA</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Acquafredda</comune>
													<comune>Adro</comune>
													<comune>Agnosine</comune>
													<comune>Alfianello</comune>
													<comune>Anfo</comune>
													<comune>Angolo Terme</comune>
													<comune>Artogne</comune>
													<comune>Azzano Mella</comune>
													<comune>Bagnolo Mella</comune>
													<comune>Bagolino</comune>
													<comune>Barbariga</comune>
													<comune>Barghe</comune>
													<comune>Bassano Bresciano</comune>
													<comune>Bedizzole</comune>
													<comune>Berlingo</comune>
													<comune>Berzo Demo</comune>
													<comune>Berzo Inferiore</comune>
													<comune>Bienno</comune>
													<comune>Bione</comune>
													<comune>Borgo San Giacomo</comune>
													<comune>Borgosatollo</comune>
													<comune>Borno</comune>
													<comune>Botticino</comune>
													<comune>Bovegno</comune>
													<comune>Bovezzo</comune>
													<comune>Brandico</comune>
													<comune>Braone</comune>
													<comune>Breno</comune>
													<comune>Brescia</comune>
													<comune>Brione</comune>
													<comune>Caino</comune>
													<comune>Calcinato</comune>
													<comune>Calvagese della Riviera</comune>
													<comune>Calvisano</comune>
													<comune>Capo di Ponte</comune>
													<comune>Capovalle</comune>
													<comune>Capriano del Colle</comune>
													<comune>Capriolo</comune>
													<comune>Carpenedolo</comune>
													<comune>Castegnato</comune>
													<comune>Castel Mella</comune>
													<comune>Castelcovati</comune>
													<comune>Castenedolo</comune>
													<comune>Casto</comune>
													<comune>Castrezzato</comune>
													<comune>Cazzago San Martino</comune>
													<comune>Cedegolo</comune>
													<comune>Cellatica</comune>
													<comune>Cerveno</comune>
													<comune>Ceto</comune>
													<comune>Cevo</comune>
													<comune>Chiari</comune>
													<comune>Cigole</comune>
													<comune>Cimbergo</comune>
													<comune>Cividate Camuno</comune>
													<comune>Coccaglio</comune>
													<comune>Collebeato</comune>
													<comune>Collio</comune>
													<comune>Cologne</comune>
													<comune>Comezzano-Cizzago</comune>
													<comune>Concesio</comune>
													<comune>Corte Franca</comune>
													<comune>Corteno Golgi</comune>
													<comune>Corzano</comune>
													<comune>Darfo Boario Terme</comune>
													<comune>Dello</comune>
													<comune>Desenzano del Garda</comune>
													<comune>Edolo</comune>
													<comune>Erbusco</comune>
													<comune>Esine</comune>
													<comune>Fiesse</comune>
													<comune>Flero</comune>
													<comune>Gambara</comune>
													<comune>Gardone Riviera</comune>
													<comune>Gardone Val Trompia</comune>
													<comune>Gargnano</comune>
													<comune>Gavardo</comune>
													<comune>Ghedi</comune>
													<comune>Gianico</comune>
													<comune>Gottolengo</comune>
													<comune>Gussago</comune>
													<comune>Idro</comune>
													<comune>Incudine</comune>
													<comune>Irma</comune>
													<comune>Iseo</comune>
													<comune>Isorella</comune>
													<comune>Lavenone</comune>
													<comune>Leno</comune>
													<comune>Limone sul Garda</comune>
													<comune>Lodrino</comune>
													<comune>Lograto</comune>
													<comune>Lonato</comune>
													<comune>Longhena</comune>
													<comune>Losine</comune>
													<comune>Lozio</comune>
													<comune>Lumezzane</comune>
													<comune>Maclodio</comune>
													<comune>Magasa</comune>
													<comune>Mairano</comune>
													<comune>Malegno</comune>
													<comune>Malonno</comune>
													<comune>Manerba del Garda</comune>
													<comune>Manerbio</comune>
													<comune>Marcheno</comune>
													<comune>Marmentino</comune>
													<comune>Marone</comune>
													<comune>Mazzano</comune>
													<comune>Milzano</comune>
													<comune>Moniga del Garda</comune>
													<comune>Monno</comune>
													<comune>Monte Isola</comune>
													<comune>Monticelli Brusati</comune>
													<comune>Montichiari</comune>
													<comune>Montirone</comune>
													<comune>Mura</comune>
													<comune>Muscoline</comune>
													<comune>Nave</comune>
													<comune>Niardo</comune>
													<comune>Nuvolento</comune>
													<comune>Nuvolera</comune>
													<comune>Odolo</comune>
													<comune>Offlaga</comune>
													<comune>Ome</comune>
													<comune>Ono San Pietro</comune>
													<comune>Orzinuovi</comune>
													<comune>Orzivecchi</comune>
													<comune>Ospitaletto</comune>
													<comune>Ossimo</comune>
													<comune>Padenghe sul Garda</comune>
													<comune>Paderno Franciacorta</comune>
													<comune>Paisco Loveno</comune>
													<comune>Paitone</comune>
													<comune>Palazzolo sull'Oglio</comune>
													<comune>Paratico</comune>
													<comune>Paspardo</comune>
													<comune>Passirano</comune>
													<comune>Pavone del Mella</comune>
													<comune>Pertica Alta</comune>
													<comune>Pertica Bassa</comune>
													<comune>Pezzaze</comune>
													<comune>Pian Camuno</comune>
													<comune>Piancogno</comune>
													<comune>Pisogne</comune>
													<comune>Polaveno</comune>
													<comune>Polpenazze del Garda</comune>
													<comune>Pompiano</comune>
													<comune>Poncarale</comune>
													<comune>Ponte di Legno</comune>
													<comune>Pontevico</comune>
													<comune>Pontoglio</comune>
													<comune>Pozzolengo</comune>
													<comune>Pralboino</comune>
													<comune>Preseglie</comune>
													<comune>Prestine</comune>
													<comune>Prevalle</comune>
													<comune>Provaglio Val Sabbia</comune>
													<comune>Provaglio d'Iseo</comune>
													<comune>Puegnago sul Garda</comune>
													<comune>Quinzano d'Oglio</comune>
													<comune>Remedello</comune>
													<comune>Rezzato</comune>
													<comune>Roccafranca</comune>
													<comune>Rodengo-Saiano</comune>
													<comune>Roncadelle</comune>
													<comune>Rovato</comune>
													<comune>Roà Volciano</comune>
													<comune>Rudiano</comune>
													<comune>Sabbio Chiese</comune>
													<comune>Sale Marasino</comune>
													<comune>Salà</comune>
													<comune>San Felice del Benaco</comune>
													<comune>San Gervasio Bresciano</comune>
													<comune>San Paolo</comune>
													<comune>San Zeno Naviglio</comune>
													<comune>Sarezzo</comune>
													<comune>Saviore dell'Adamello</comune>
													<comune>Sellero</comune>
													<comune>Seniga</comune>
													<comune>Serle</comune>
													<comune>Sirmione</comune>
													<comune>Soiano del Lago</comune>
													<comune>Sonico</comune>
													<comune>Sulzano</comune>
													<comune>Tavernole sul Mella</comune>
													<comune>Temà</comune>
													<comune>Tignale</comune>
													<comune>Torbole Casaglia</comune>
													<comune>Toscolano-Maderno</comune>
													<comune>Travagliato</comune>
													<comune>Tremosine</comune>
													<comune>Trenzano</comune>
													<comune>Treviso Bresciano</comune>
													<comune>Urago d'Oglio</comune>
													<comune>Vallio Terme</comune>
													<comune>Valvestino</comune>
													<comune>Verolanuova</comune>
													<comune>Verolavecchia</comune>
													<comune>Vestone</comune>
													<comune>Vezza d'Oglio</comune>
													<comune>Villa Carcina</comune>
													<comune>Villachiara</comune>
													<comune>Villanuova sul Clisi</comune>
													<comune>Vione</comune>
													<comune>Visano</comune>
													<comune>Vobarno</comune>
													<comune>Zone</comune>
												</comuni>
											</prov>
											<prov>
												<code>BR</code>
												<name>BRINDISI</name>
												<region>PUGLIA</region>
												<comuni>
													<comune>Brindisi</comune>
													<comune>Carovigno</comune>
													<comune>Ceglie Messapica</comune>
													<comune>Cellino San Marco</comune>
													<comune>Cisternino</comune>
													<comune>Erchie</comune>
													<comune>Fasano</comune>
													<comune>Francavilla Fontana</comune>
													<comune>Latiano</comune>
													<comune>Mesagne</comune>
													<comune>Oria</comune>
													<comune>Ostuni</comune>
													<comune>San Donaci</comune>
													<comune>San Michele Salentino</comune>
													<comune>San Pancrazio Salentino</comune>
													<comune>San Pietro Vernotico</comune>
													<comune>San Vito dei Normanni</comune>
													<comune>Torchiarolo</comune>
													<comune>Torre Santa Susanna</comune>
													<comune>Villa Castelli</comune>
												</comuni>
											</prov>
											<prov>
												<code>CA</code>
												<name>CAGLIARI</name>
												<region>SARDEGNA</region>
												<comuni>
													<comune>Armungia</comune>
													<comune>Assemini</comune>
													<comune>Ballao</comune>
													<comune>Barrali</comune>
													<comune>Burcei</comune>
													<comune>Cagliari</comune>
													<comune>Capoterra</comune>
													<comune>Castiadas</comune>
													<comune>Decimomannu</comune>
													<comune>Decimoputzu</comune>
													<comune>Dolianova</comune>
													<comune>Domus De Maria</comune>
													<comune>Donorà</comune>
													<comune>Elmas</comune>
													<comune>Escalaplano</comune>
													<comune>Escolca</comune>
													<comune>Esterzili</comune>
													<comune>Gergei</comune>
													<comune>Gesico</comune>
													<comune>Goni</comune>
													<comune>Guamaggiore</comune>
													<comune>Guasila</comune>
													<comune>Isili</comune>
													<comune>Mandas</comune>
													<comune>Maracalagonis</comune>
													<comune>Monastir</comune>
													<comune>Monserrato</comune>
													<comune>Muravera</comune>
													<comune>Nuragus</comune>
													<comune>Nurallao</comune>
													<comune>Nuraminis</comune>
													<comune>Nurri</comune>
													<comune>Orroli</comune>
													<comune>Ortacesus</comune>
													<comune>Pimentel</comune>
													<comune>Pula</comune>
													<comune>Quartu Sant'Elena</comune>
													<comune>Quartucciu</comune>
													<comune>Sadali</comune>
													<comune>Samatzai</comune>
													<comune>San Basilio</comune>
													<comune>San Nicolà Gerrei</comune>
													<comune>San Sperate</comune>
													<comune>San Vito</comune>
													<comune>Sant'Andrea Frius</comune>
													<comune>Sarroch</comune>
													<comune>Selargius</comune>
													<comune>Selegas</comune>
													<comune>Senorbà</comune>
													<comune>Serdiana</comune>
													<comune>Serri</comune>
													<comune>Sestu</comune>
													<comune>Settimo San Pietro</comune>
													<comune>Seulo</comune>
													<comune>Siliqua</comune>
													<comune>Silius</comune>
													<comune>Sinnai</comune>
													<comune>Siurgus Donigala</comune>
													<comune>Soleminis</comune>
													<comune>Suelli</comune>
													<comune>Teulada</comune>
													<comune>Ussana</comune>
													<comune>Uta</comune>
													<comune>Vallermosa</comune>
													<comune>Villa San Pietro</comune>
													<comune>Villanova Tulo</comune>
													<comune>Villaputzu</comune>
													<comune>Villasalto</comune>
													<comune>Villasimius</comune>
													<comune>Villasor</comune>
													<comune>Villaspeciosa</comune>
												</comuni>
											</prov>
											<prov>
												<code>CL</code>
												<name>CALTANISSETTA</name>
												<region>SICILIA</region>
												<comuni>
													<comune>Acquaviva Platani</comune>
													<comune>Bompensiere</comune>
													<comune>Butera</comune>
													<comune>Caltanissetta</comune>
													<comune>Campofranco</comune>
													<comune>Delia</comune>
													<comune>Gela</comune>
													<comune>Marianopoli</comune>
													<comune>Mazzarino</comune>
													<comune>Milena</comune>
													<comune>Montedoro</comune>
													<comune>Mussomeli</comune>
													<comune>Niscemi</comune>
													<comune>Resuttano</comune>
													<comune>Riesi</comune>
													<comune>San Cataldo</comune>
													<comune>Santa Caterina Villarmosa</comune>
													<comune>Serradifalco</comune>
													<comune>Sommatino</comune>
													<comune>Sutera</comune>
													<comune>Vallelunga Pratameno</comune>
													<comune>Villalba</comune>
												</comuni>
											</prov>
											<prov>
												<code>CB</code>
												<name>CAMPOBASSO</name>
												<region>MOLISE</region>
												<comuni>
													<comune>Acquaviva Collecroce</comune>
													<comune>Baranello</comune>
													<comune>Bojano</comune>
													<comune>Bonefro</comune>
													<comune>Busso</comune>
													<comune>Campobasso</comune>
													<comune>Campochiaro</comune>
													<comune>Campodipietra</comune>
													<comune>Campolieto</comune>
													<comune>Campomarino</comune>
													<comune>Casacalenda</comune>
													<comune>Casalciprano</comune>
													<comune>Castelbottaccio</comune>
													<comune>Castellino del Biferno</comune>
													<comune>Castelmauro</comune>
													<comune>Castropignano</comune>
													<comune>Cercemaggiore</comune>
													<comune>Cercepiccola</comune>
													<comune>Civitacampomarano</comune>
													<comune>Colle d'Anchise</comune>
													<comune>Colletorto</comune>
													<comune>Duronia</comune>
													<comune>Ferrazzano</comune>
													<comune>Fossalto</comune>
													<comune>Gambatesa</comune>
													<comune>Gildone</comune>
													<comune>Guardialfiera</comune>
													<comune>Guardiaregia</comune>
													<comune>Guglionesi</comune>
													<comune>Jelsi</comune>
													<comune>Larino</comune>
													<comune>Limosano</comune>
													<comune>Lucito</comune>
													<comune>Lupara</comune>
													<comune>Macchia Valfortore</comune>
													<comune>Mafalda</comune>
													<comune>Matrice</comune>
													<comune>Mirabello Sannitico</comune>
													<comune>Molise</comune>
													<comune>Monacilioni</comune>
													<comune>Montagano</comune>
													<comune>Montecilfone</comune>
													<comune>Montefalcone nel Sannio</comune>
													<comune>Montelongo</comune>
													<comune>Montemitro</comune>
													<comune>Montenero di Bisaccia</comune>
													<comune>Montorio nei Frentani</comune>
													<comune>Morrone del Sannio</comune>
													<comune>Oratino</comune>
													<comune>Palata</comune>
													<comune>Petacciato</comune>
													<comune>Petrella Tifernina</comune>
													<comune>Pietracatella</comune>
													<comune>Pietracupa</comune>
													<comune>Portocannone</comune>
													<comune>Provvidenti</comune>
													<comune>Riccia</comune>
													<comune>Ripabottoni</comune>
													<comune>Ripalimosani</comune>
													<comune>Roccavivara</comune>
													<comune>Rotello</comune>
													<comune>Salcito</comune>
													<comune>San Biase</comune>
													<comune>San Felice del Molise</comune>
													<comune>San Giacomo degli Schiavoni</comune>
													<comune>San Giovanni in Galdo</comune>
													<comune>San Giuliano del Sannio</comune>
													<comune>San Giuliano di Puglia</comune>
													<comune>San Martino in Pensilis</comune>
													<comune>San Massimo</comune>
													<comune>San Polo Matese</comune>
													<comune>Sant'Angelo Limosano</comune>
													<comune>Sant'Elia a Pianisi</comune>
													<comune>Santa Croce di Magliano</comune>
													<comune>Sepino</comune>
													<comune>Spinete</comune>
													<comune>Tavenna</comune>
													<comune>Termoli</comune>
													<comune>Torella del Sannio</comune>
													<comune>Toro</comune>
													<comune>Trivento</comune>
													<comune>Tufara</comune>
													<comune>Ururi</comune>
													<comune>Vinchiaturo</comune>
												</comuni>
											</prov>
											<prov>
												<code>CE</code>
												<name>CASERTA</name>
												<region>CALABRIA</region>
												<comuni>
													<comune>Ailano</comune>
													<comune>Alife</comune>
													<comune>Alvignano</comune>
													<comune>Arienzo</comune>
													<comune>Aversa</comune>
													<comune>Baia e Latina</comune>
													<comune>Bellona</comune>
													<comune>Caianello</comune>
													<comune>Caiazzo</comune>
													<comune>Calvi Risorta</comune>
													<comune>Camigliano</comune>
													<comune>Cancello ed Arnone</comune>
													<comune>Capodrise</comune>
													<comune>Capriati a Volturno</comune>
													<comune>Capua</comune>
													<comune>Carinaro</comune>
													<comune>Carinola</comune>
													<comune>Casagiove</comune>
													<comune>Casal di Principe</comune>
													<comune>Casaluce</comune>
													<comune>Casapesenna</comune>
													<comune>Casapulla</comune>
													<comune>Caserta</comune>
													<comune>Castel Campagnano</comune>
													<comune>Castel Morrone</comune>
													<comune>Castel Volturno</comune>
													<comune>Castel di Sasso</comune>
													<comune>Castello del Matese</comune>
													<comune>Cellole</comune>
													<comune>Cervino</comune>
													<comune>Cesa</comune>
													<comune>Ciorlano</comune>
													<comune>Conca della Campania</comune>
													<comune>Curti</comune>
													<comune>Dragoni</comune>
													<comune>Falciano del Massico</comune>
													<comune>Fontegreca</comune>
													<comune>Formicola</comune>
													<comune>Francolise</comune>
													<comune>Frignano</comune>
													<comune>Gallo Matese</comune>
													<comune>Galluccio</comune>
													<comune>Giano Vetusto</comune>
													<comune>Gioia Sannitica</comune>
													<comune>Grazzanise</comune>
													<comune>Gricignano di Aversa</comune>
													<comune>Letino</comune>
													<comune>Liberi</comune>
													<comune>Lusciano</comune>
													<comune>Macerata Campania</comune>
													<comune>Maddaloni</comune>
													<comune>Marcianise</comune>
													<comune>Marzano Appio</comune>
													<comune>Mignano Monte Lungo</comune>
													<comune>Mondragone</comune>
													<comune>Orta di Atella</comune>
													<comune>Parete</comune>
													<comune>Pastorano</comune>
													<comune>Piana di Monte Verna</comune>
													<comune>Piedimonte Matese</comune>
													<comune>Pietramelara</comune>
													<comune>Pietravairano</comune>
													<comune>Pignataro Maggiore</comune>
													<comune>Pontelatone</comune>
													<comune>Portico di Caserta</comune>
													<comune>Prata Sannita</comune>
													<comune>Pratella</comune>
													<comune>Presenzano</comune>
													<comune>Raviscanina</comune>
													<comune>Recale</comune>
													<comune>Riardo</comune>
													<comune>Rocca D'Evandro</comune>
													<comune>Roccamonfina</comune>
													<comune>Roccaromana</comune>
													<comune>Rocchetta e Croce</comune>
													<comune>Ruviano</comune>
													<comune>San Cipriano d'Aversa</comune>
													<comune>San Felice a Cancello</comune>
													<comune>San Gregorio Matese</comune>
													<comune>San Marcellino</comune>
													<comune>San Marco Evangelista</comune>
													<comune>San Nicola la Strada</comune>
													<comune>San Pietro Infine</comune>
													<comune>San Potito Sannitico</comune>
													<comune>San Prisco</comune>
													<comune>San Tammaro</comune>
													<comune>Sant'Angelo d'Alife</comune>
													<comune>Sant'Arpino</comune>
													<comune>Santa Maria Capua Vetere</comune>
													<comune>Santa Maria La Fossa</comune>
													<comune>Santa Maria a Vico</comune>
													<comune>Sessa Aurunca</comune>
													<comune>Sparanise</comune>
													<comune>Succivo</comune>
													<comune>Teano</comune>
													<comune>Teverola</comune>
													<comune>Tora e Piccilli</comune>
													<comune>Trentola-Ducenta</comune>
													<comune>Vairano Patenora</comune>
													<comune>Valle Agricola</comune>
													<comune>Valle di Maddaloni</comune>
													<comune>Villa Literno</comune>
													<comune>Villa di Briano</comune>
													<comune>Vitulazio</comune>
												</comuni>
											</prov>
											<prov>
												<code>CT</code>
												<name>CATANIA</name>
												<region>SICILIA</region>
												<comuni>
													<comune>Aci Bonaccorsi</comune>
													<comune>Aci Castello</comune>
													<comune>Aci Catena</comune>
													<comune>Aci Sant'Antonio</comune>
													<comune>Acireale</comune>
													<comune>Adrano</comune>
													<comune>Belpasso</comune>
													<comune>Biancavilla</comune>
													<comune>Bronte</comune>
													<comune>Calatabiano</comune>
													<comune>Caltagirone</comune>
													<comune>Camporotondo Etneo</comune>
													<comune>Castel di Iudica</comune>
													<comune>Castiglione di Sicilia</comune>
													<comune>Catania</comune>
													<comune>Fiumefreddo di Sicilia</comune>
													<comune>Giarre</comune>
													<comune>Grammichele</comune>
													<comune>Gravina di Catania</comune>
													<comune>Licodia Eubea</comune>
													<comune>Linguaglossa</comune>
													<comune>Maletto</comune>
													<comune>Maniace</comune>
													<comune>Mascali</comune>
													<comune>Mascalucia</comune>
													<comune>Mazzarrone</comune>
													<comune>Militello in Val di Catania</comune>
													<comune>Milo</comune>
													<comune>Mineo</comune>
													<comune>Mirabella Imbaccari</comune>
													<comune>Misterbianco</comune>
													<comune>Motta Sant'Anastasia</comune>
													<comune>Nicolosi</comune>
													<comune>Palagonia</comune>
													<comune>Paternà</comune>
													<comune>Pedara</comune>
													<comune>Piedimonte Etneo</comune>
													<comune>Raddusa</comune>
													<comune>Ragalna</comune>
													<comune>Ramacca</comune>
													<comune>Randazzo</comune>
													<comune>Riposto</comune>
													<comune>San Cono</comune>
													<comune>San Giovanni la Punta</comune>
													<comune>San Gregorio di Catania</comune>
													<comune>San Michele di Ganzaria</comune>
													<comune>San Pietro Clarenza</comune>
													<comune>Sant'Agata Li Battiati</comune>
													<comune>Sant'Alfio</comune>
													<comune>Santa Maria di Licodia</comune>
													<comune>Santa Venerina</comune>
													<comune>Scordia</comune>
													<comune>Trecastagni</comune>
													<comune>Tremestieri Etneo</comune>
													<comune>Valverde</comune>
													<comune>Viagrande</comune>
													<comune>Vizzini</comune>
													<comune>Zafferana Etnea</comune>
												</comuni>
											</prov>
											<prov>
												<code>CZ</code>
												<name>CATANZARO</name>
												<region>CALABRIA</region>
												<comuni>
													<comune>Albi</comune>
													<comune>Amaroni</comune>
													<comune>Amato</comune>
													<comune>Andali</comune>
													<comune>Argusto</comune>
													<comune>Badolato</comune>
													<comune>Belcastro</comune>
													<comune>Borgia</comune>
													<comune>Botricello</comune>
													<comune>Caraffa di Catanzaro</comune>
													<comune>Cardinale</comune>
													<comune>Carlopoli</comune>
													<comune>Catanzaro</comune>
													<comune>Cenadi</comune>
													<comune>Centrache</comune>
													<comune>Cerva</comune>
													<comune>Chiaravalle Centrale</comune>
													<comune>Cicala</comune>
													<comune>Conflenti</comune>
													<comune>Cortale</comune>
													<comune>Cropani</comune>
													<comune>Curinga</comune>
													<comune>Davoli</comune>
													<comune>Decollatura</comune>
													<comune>Falerna</comune>
													<comune>Feroleto Antico</comune>
													<comune>Fossato Serralta</comune>
													<comune>Gagliato</comune>
													<comune>Gasperina</comune>
													<comune>Gimigliano</comune>
													<comune>Girifalco</comune>
													<comune>Gizzeria</comune>
													<comune>Guardavalle</comune>
													<comune>Isca sullo Ionio</comune>
													<comune>Jacurso</comune>
													<comune>Lamezia Terme</comune>
													<comune>Magisano</comune>
													<comune>Maida</comune>
													<comune>Marcedusa</comune>
													<comune>Marcellinara</comune>
													<comune>Martirano</comune>
													<comune>Martirano Lombardo</comune>
													<comune>Miglierina</comune>
													<comune>Montauro</comune>
													<comune>Montepaone</comune>
													<comune>Motta Santa Lucia</comune>
													<comune>Nocera Terinese</comune>
													<comune>Olivadi</comune>
													<comune>Palermiti</comune>
													<comune>Pentone</comune>
													<comune>Petrizzi</comune>
													<comune>Petronà</comune>
													<comune>Pianopoli</comune>
													<comune>Platania</comune>
													<comune>San Floro</comune>
													<comune>San Mango d'Aquino</comune>
													<comune>San Pietro Apostolo</comune>
													<comune>San Pietro a Maida</comune>
													<comune>San Sostene</comune>
													<comune>San Vito sullo Ionio</comune>
													<comune>Sant'Andrea Apostolo dello Ionio</comune>
													<comune>Santa Caterina dello Ionio</comune>
													<comune>Satriano</comune>
													<comune>Sellia</comune>
													<comune>Sellia Marina</comune>
													<comune>Serrastretta</comune>
													<comune>Sersale</comune>
													<comune>Settingiano</comune>
													<comune>Simeri Crichi</comune>
													<comune>Sorbo San Basile</comune>
													<comune>Soverato</comune>
													<comune>Soveria Mannelli</comune>
													<comune>Soveria Simeri</comune>
													<comune>Squillace</comune>
													<comune>Stalettà</comune>
													<comune>Taverna</comune>
													<comune>Tiriolo</comune>
													<comune>Torre di Ruggiero</comune>
													<comune>Vallefiorita</comune>
													<comune>Zagarise</comune>
												</comuni>
											</prov>
											<prov>
												<code>CH</code>
												<name>CHIETI</name>
												<region>ABRUZZO</region>
												<comuni>
													<comune>Altino</comune>
													<comune>Archi</comune>
													<comune>Ari</comune>
													<comune>Arielli</comune>
													<comune>Atessa</comune>
													<comune>Bomba</comune>
													<comune>Borrello</comune>
													<comune>Bucchianico</comune>
													<comune>Canosa Sannita</comune>
													<comune>Carpineto Sinello</comune>
													<comune>Carunchio</comune>
													<comune>Casacanditella</comune>
													<comune>Casalanguida</comune>
													<comune>Casalbordino</comune>
													<comune>Casalincontrada</comune>
													<comune>Casoli</comune>
													<comune>Castel Frentano</comune>
													<comune>Castelguidone</comune>
													<comune>Castiglione Messer Marino</comune>
													<comune>Celenza sul Trigno</comune>
													<comune>Chieti</comune>
													<comune>Civitaluparella</comune>
													<comune>Civitella Messer Raimondo</comune>
													<comune>Colledimacine</comune>
													<comune>Colledimezzo</comune>
													<comune>Crecchio</comune>
													<comune>Cupello</comune>
													<comune>Dogliola</comune>
													<comune>Fallo</comune>
													<comune>Fara Filiorum Petri</comune>
													<comune>Fara San Martino</comune>
													<comune>Filetto</comune>
													<comune>Fossacesia</comune>
													<comune>Fraine</comune>
													<comune>Francavilla al Mare</comune>
													<comune>Fresagrandinaria</comune>
													<comune>Frisa</comune>
													<comune>Furci</comune>
													<comune>Gamberale</comune>
													<comune>Gessopalena</comune>
													<comune>Gissi</comune>
													<comune>Giuliano Teatino</comune>
													<comune>Guardiagrele</comune>
													<comune>Guilmi</comune>
													<comune>Lama dei Peligni</comune>
													<comune>Lanciano</comune>
													<comune>Lentella</comune>
													<comune>Lettopalena</comune>
													<comune>Liscia</comune>
													<comune>Miglianico</comune>
													<comune>Montazzoli</comune>
													<comune>Montebello sul Sangro</comune>
													<comune>Monteferrante</comune>
													<comune>Montelapiano</comune>
													<comune>Montenerodomo</comune>
													<comune>Monteodorisio</comune>
													<comune>Mozzagrogna</comune>
													<comune>Orsogna</comune>
													<comune>Ortona</comune>
													<comune>Paglieta</comune>
													<comune>Palena</comune>
													<comune>Palmoli</comune>
													<comune>Palombaro</comune>
													<comune>Pennadomo</comune>
													<comune>Pennapiedimonte</comune>
													<comune>Perano</comune>
													<comune>Pietraferrazzana</comune>
													<comune>Pizzoferrato</comune>
													<comune>Poggiofiorito</comune>
													<comune>Pollutri</comune>
													<comune>Pretoro</comune>
													<comune>Quadri</comune>
													<comune>Rapino</comune>
													<comune>Ripa Teatina</comune>
													<comune>Rocca San Giovanni</comune>
													<comune>Roccamontepiano</comune>
													<comune>Roccascalegna</comune>
													<comune>Roccaspinalveti</comune>
													<comune>Roio del Sangro</comune>
													<comune>Rosello</comune>
													<comune>San Buono</comune>
													<comune>San Giovanni Lipioni</comune>
													<comune>San Giovanni Teatino</comune>
													<comune>San Martino sulla Marrucina</comune>
													<comune>San Salvo</comune>
													<comune>San Vito Chietino</comune>
													<comune>Sant'Eusanio del Sangro</comune>
													<comune>Santa Maria Imbaro</comune>
													<comune>Scerni</comune>
													<comune>Schiavi di Abruzzo</comune>
													<comune>Taranta Peligna</comune>
													<comune>Tollo</comune>
													<comune>Torino di Sangro</comune>
													<comune>Tornareccio</comune>
													<comune>Torrebruna</comune>
													<comune>Torrevecchia Teatina</comune>
													<comune>Torricella Peligna</comune>
													<comune>Treglio</comune>
													<comune>Tufillo</comune>
													<comune>Vacri</comune>
													<comune>Vasto</comune>
													<comune>Villa Santa Maria</comune>
													<comune>Villalfonsina</comune>
													<comune>Villamagna</comune>
												</comuni>
											</prov>
											<prov>
												<code>CO</code>
												<name>COMO</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Albavilla</comune>
													<comune>Albese con Cassano</comune>
													<comune>Albiolo</comune>
													<comune>Alserio</comune>
													<comune>Alzate Brianza</comune>
													<comune>Anzano del Parco</comune>
													<comune>Appiano Gentile</comune>
													<comune>Argegno</comune>
													<comune>Arosio</comune>
													<comune>Asso</comune>
													<comune>Barni</comune>
													<comune>Bellagio</comune>
													<comune>Bene Lario</comune>
													<comune>Beregazzo con Figliaro</comune>
													<comune>Binago</comune>
													<comune>Bizzarone</comune>
													<comune>Blessagno</comune>
													<comune>Blevio</comune>
													<comune>Bregnano</comune>
													<comune>Brenna</comune>
													<comune>Brienno</comune>
													<comune>Brunate</comune>
													<comune>Bulgarograsso</comune>
													<comune>Cabiate</comune>
													<comune>Cadorago</comune>
													<comune>Caglio</comune>
													<comune>Cagno</comune>
													<comune>Campione d'Italia</comune>
													<comune>Cantà</comune>
													<comune>Canzo</comune>
													<comune>Capiago Intimiano</comune>
													<comune>Carate Urio</comune>
													<comune>Carbonate</comune>
													<comune>Carimate</comune>
													<comune>Carlazzo</comune>
													<comune>Carugo</comune>
													<comune>Casasco d'Intelvi</comune>
													<comune>Caslino d'Erba</comune>
													<comune>Casnate con Bernate</comune>
													<comune>Cassina Rizzardi</comune>
													<comune>Castelmarte</comune>
													<comune>Castelnuovo Bozzente</comune>
													<comune>Castiglione d'Intelvi</comune>
													<comune>Cavallasca</comune>
													<comune>Cavargna</comune>
													<comune>Cerano d'Intelvi</comune>
													<comune>Cermenate</comune>
													<comune>Cernobbio</comune>
													<comune>Cirimido</comune>
													<comune>Civenna</comune>
													<comune>Claino con Osteno</comune>
													<comune>Colonno</comune>
													<comune>Como</comune>
													<comune>Consiglio di Rumo</comune>
													<comune>Corrido</comune>
													<comune>Cremia</comune>
													<comune>Cucciago</comune>
													<comune>Cusino</comune>
													<comune>Dizzasco</comune>
													<comune>Domaso</comune>
													<comune>Dongo</comune>
													<comune>Dosso del Liro</comune>
													<comune>Drezzo</comune>
													<comune>Erba</comune>
													<comune>Eupilio</comune>
													<comune>Faggeto Lario</comune>
													<comune>Faloppio</comune>
													<comune>Fenegrà</comune>
													<comune>Figino Serenza</comune>
													<comune>Fino Mornasco</comune>
													<comune>Garzeno</comune>
													<comune>Gera Lario</comune>
													<comune>Germasino</comune>
													<comune>Gironico</comune>
													<comune>Grandate</comune>
													<comune>Grandola ed Uniti</comune>
													<comune>Gravedona</comune>
													<comune>Griante</comune>
													<comune>Guanzate</comune>
													<comune>Inverigo</comune>
													<comune>Laglio</comune>
													<comune>Laino</comune>
													<comune>Lambrugo</comune>
													<comune>Lanzo d'Intelvi</comune>
													<comune>Lasnigo</comune>
													<comune>Lenno</comune>
													<comune>Lezzeno</comune>
													<comune>Limido Comasco</comune>
													<comune>Lipomo</comune>
													<comune>Livo</comune>
													<comune>Locate Varesino</comune>
													<comune>Lomazzo</comune>
													<comune>Longone al Segrino</comune>
													<comune>Luisago</comune>
													<comune>Lurago Marinone</comune>
													<comune>Lurago d'Erba</comune>
													<comune>Lurate Caccivio</comune>
													<comune>Magreglio</comune>
													<comune>Mariano Comense</comune>
													<comune>Maslianico</comune>
													<comune>Menaggio</comune>
													<comune>Merone</comune>
													<comune>Mezzegra</comune>
													<comune>Moltrasio</comune>
													<comune>Monguzzo</comune>
													<comune>Montano Lucino</comune>
													<comune>Montemezzo</comune>
													<comune>Montorfano</comune>
													<comune>Mozzate</comune>
													<comune>Musso</comune>
													<comune>Nesso</comune>
													<comune>Novedrate</comune>
													<comune>Olgiate Comasco</comune>
													<comune>Oltrona di San Mamette</comune>
													<comune>Orsenigo</comune>
													<comune>Ossuccio</comune>
													<comune>Parà</comune>
													<comune>Peglio</comune>
													<comune>Pellio Intelvi</comune>
													<comune>Pianello del Lario</comune>
													<comune>Pigra</comune>
													<comune>Plesio</comune>
													<comune>Pognana Lario</comune>
													<comune>Ponna</comune>
													<comune>Ponte Lambro</comune>
													<comune>Porlezza</comune>
													<comune>Proserpio</comune>
													<comune>Pusiano</comune>
													<comune>Ramponio Verna</comune>
													<comune>Rezzago</comune>
													<comune>Rodero</comune>
													<comune>Ronago</comune>
													<comune>Rovellasca</comune>
													<comune>Rovello Porro</comune>
													<comune>Sala Comacina</comune>
													<comune>San Bartolomeo Val Cavargna</comune>
													<comune>San Fedele Intelvi</comune>
													<comune>San Fermo della Battaglia</comune>
													<comune>San Nazzaro Val Cavargna</comune>
													<comune>San Siro</comune>
													<comune>Schignano</comune>
													<comune>Senna Comasco</comune>
													<comune>Solbiate</comune>
													<comune>Sorico</comune>
													<comune>Sormano</comune>
													<comune>Stazzona</comune>
													<comune>Tavernerio</comune>
													<comune>Torno</comune>
													<comune>Tremezzo</comune>
													<comune>Trezzone</comune>
													<comune>Turate</comune>
													<comune>Uggiate-Trevano</comune>
													<comune>Val Rezzo</comune>
													<comune>Valbrona</comune>
													<comune>Valmorea</comune>
													<comune>Valsolda</comune>
													<comune>Veleso</comune>
													<comune>Veniano</comune>
													<comune>Vercana</comune>
													<comune>Vertemate con Minoprio</comune>
													<comune>Villa Guardia</comune>
													<comune>Zelbio</comune>
												</comuni>
											</prov>
											<prov>
												<code>CS</code>
												<name>COSENZA</name>
												<region>CALABRIA</region>
												<comuni>
													<comune>Acquaformosa</comune>
													<comune>Acquappesa</comune>
													<comune>Acri</comune>
													<comune>Aiello Calabro</comune>
													<comune>Aieta</comune>
													<comune>Albidona</comune>
													<comune>Alessandria del Carretto</comune>
													<comune>Altilia</comune>
													<comune>Altomonte</comune>
													<comune>Amantea</comune>
													<comune>Amendolara</comune>
													<comune>Aprigliano</comune>
													<comune>Belmonte Calabro</comune>
													<comune>Belsito</comune>
													<comune>Belvedere Marittimo</comune>
													<comune>Bianchi</comune>
													<comune>Bisignano</comune>
													<comune>Bocchigliero</comune>
													<comune>Bonifati</comune>
													<comune>Buonvicino</comune>
													<comune>Calopezzati</comune>
													<comune>Caloveto</comune>
													<comune>Campana</comune>
													<comune>Canna</comune>
													<comune>Cariati</comune>
													<comune>Carolei</comune>
													<comune>Carpanzano</comune>
													<comune>Casole Bruzio</comune>
													<comune>Cassano allo Ionio</comune>
													<comune>Castiglione Cosentino</comune>
													<comune>Castrolibero</comune>
													<comune>Castroregio</comune>
													<comune>Castrovillari</comune>
													<comune>Celico</comune>
													<comune>Cellara</comune>
													<comune>Cerchiara di Calabria</comune>
													<comune>Cerisano</comune>
													<comune>Cervicati</comune>
													<comune>Cerzeto</comune>
													<comune>Cetraro</comune>
													<comune>Civita</comune>
													<comune>Cleto</comune>
													<comune>Colosimi</comune>
													<comune>Corigliano Calabro</comune>
													<comune>Cosenza</comune>
													<comune>Cropalati</comune>
													<comune>Crosia</comune>
													<comune>Diamante</comune>
													<comune>Dipignano</comune>
													<comune>Domanico</comune>
													<comune>Fagnano Castello</comune>
													<comune>Falconara Albanese</comune>
													<comune>Figline Vegliaturo</comune>
													<comune>Firmo</comune>
													<comune>Fiumefreddo Bruzio</comune>
													<comune>Francavilla Marittima</comune>
													<comune>Frascineto</comune>
													<comune>Fuscaldo</comune>
													<comune>Grimaldi</comune>
													<comune>Grisolia</comune>
													<comune>Guardia Piemontese</comune>
													<comune>Lago</comune>
													<comune>Laino Borgo</comune>
													<comune>Laino Castello</comune>
													<comune>Lappano</comune>
													<comune>Lattarico</comune>
													<comune>Longobardi</comune>
													<comune>Longobucco</comune>
													<comune>Lungro</comune>
													<comune>Luzzi</comune>
													<comune>Maierà</comune>
													<comune>Malito</comune>
													<comune>Malvito</comune>
													<comune>Mandatoriccio</comune>
													<comune>Mangone</comune>
													<comune>Marano Marchesato</comune>
													<comune>Marano Principato</comune>
													<comune>Marzi</comune>
													<comune>Mendicino</comune>
													<comune>Mongrassano</comune>
													<comune>Montalto Uffugo</comune>
													<comune>Montegiordano</comune>
													<comune>Morano Calabro</comune>
													<comune>Mormanno</comune>
													<comune>Mottafollone</comune>
													<comune>Nocara</comune>
													<comune>Oriolo</comune>
													<comune>Orsomarso</comune>
													<comune>Paludi</comune>
													<comune>Panettieri</comune>
													<comune>Paola</comune>
													<comune>Papasidero</comune>
													<comune>Parenti</comune>
													<comune>Paterno Calabro</comune>
													<comune>Pedace</comune>
													<comune>Pedivigliano</comune>
													<comune>Piane Crati</comune>
													<comune>Pietrafitta</comune>
													<comune>Pietrapaola</comune>
													<comune>Plataci</comune>
													<comune>Praia a Mare</comune>
													<comune>Rende</comune>
													<comune>Rocca Imperiale</comune>
													<comune>Roggiano Gravina</comune>
													<comune>Rogliano</comune>
													<comune>Rose</comune>
													<comune>Roseto Capo Spulico</comune>
													<comune>Rossano</comune>
													<comune>Rota Greca</comune>
													<comune>Rovito</comune>
													<comune>San Basile</comune>
													<comune>San Benedetto Ullano</comune>
													<comune>San Cosmo Albanese</comune>
													<comune>San Demetrio Corone</comune>
													<comune>San Donato di Ninea</comune>
													<comune>San Fili</comune>
													<comune>San Giorgio Albanese</comune>
													<comune>San Giovanni in Fiore</comune>
													<comune>San Lorenzo Bellizzi</comune>
													<comune>San Lorenzo del Vallo</comune>
													<comune>San Lucido</comune>
													<comune>San Marco Argentano</comune>
													<comune>San Martino di Finita</comune>
													<comune>San Nicola Arcella</comune>
													<comune>San Pietro in Amantea</comune>
													<comune>San Pietro in Guarano</comune>
													<comune>San Sosti</comune>
													<comune>San Vincenzo la Costa</comune>
													<comune>Sangineto</comune>
													<comune>Sant'Agata di Esaro</comune>
													<comune>Santa Caterina Albanese</comune>
													<comune>Santa Domenica Talao</comune>
													<comune>Santa Maria del Cedro</comune>
													<comune>Santa Sofia D'Epiro</comune>
													<comune>Santo Stefano di Rogliano</comune>
													<comune>Saracena</comune>
													<comune>Scala Coeli</comune>
													<comune>Scalea</comune>
													<comune>Scigliano</comune>
													<comune>Serra Pedace</comune>
													<comune>Serra d'Aiello</comune>
													<comune>Spezzano Albanese</comune>
													<comune>Spezzano Piccolo</comune>
													<comune>Spezzano della Sila</comune>
													<comune>Tarsia</comune>
													<comune>Terranova da Sibari</comune>
													<comune>Terravecchia</comune>
													<comune>Torano Castello</comune>
													<comune>Tortora</comune>
													<comune>Trebisacce</comune>
													<comune>Trenta</comune>
													<comune>Vaccarizzo Albanese</comune>
													<comune>Verbicaro</comune>
													<comune>Villapiana</comune>
													<comune>Zumpano</comune>
												</comuni>
											</prov>
											<prov>
												<code>CR</code>
												<name>CREMONA</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Acquanegra Cremonese</comune>
													<comune>Agnadello</comune>
													<comune>Annicco</comune>
													<comune>Azzanello</comune>
													<comune>Bagnolo Cremasco</comune>
													<comune>Bonemerse</comune>
													<comune>Bordolano</comune>
													<comune>Ca' d'Andrea</comune>
													<comune>Calvatone</comune>
													<comune>Camisano</comune>
													<comune>Campagnola Cremasca</comune>
													<comune>Capergnanica</comune>
													<comune>Cappella Cantone</comune>
													<comune>Cappella de' Picenardi</comune>
													<comune>Capralba</comune>
													<comune>Casalbuttano ed Uniti</comune>
													<comune>Casale Cremasco-Vidolasco</comune>
													<comune>Casaletto Ceredano</comune>
													<comune>Casaletto Vaprio</comune>
													<comune>Casaletto di Sopra</comune>
													<comune>Casalmaggiore</comune>
													<comune>Casalmorano</comune>
													<comune>Castel Gabbiano</comune>
													<comune>Casteldidone</comune>
													<comune>Castelleone</comune>
													<comune>Castelverde</comune>
													<comune>Castelvisconti</comune>
													<comune>Cella Dati</comune>
													<comune>Chieve</comune>
													<comune>Cicognolo</comune>
													<comune>Cingia de' Botti</comune>
													<comune>Corte de' Cortesi con Cignone</comune>
													<comune>Corte de' Frati</comune>
													<comune>Credera Rubbiano</comune>
													<comune>Crema</comune>
													<comune>Cremona</comune>
													<comune>Cremosano</comune>
													<comune>Crotta d'Adda</comune>
													<comune>Cumignano sul Naviglio</comune>
													<comune>Derovere</comune>
													<comune>Dovera</comune>
													<comune>Drizzona</comune>
													<comune>Fiesco</comune>
													<comune>Formigara</comune>
													<comune>Gabbioneta-Binanuova</comune>
													<comune>Gadesco-Pieve Delmona</comune>
													<comune>Genivolta</comune>
													<comune>Gerre de' Caprioli</comune>
													<comune>Gombito</comune>
													<comune>Grontardo</comune>
													<comune>Grumello Cremonese ed Uniti</comune>
													<comune>Gussola</comune>
													<comune>Isola Dovarese</comune>
													<comune>Izano</comune>
													<comune>Madignano</comune>
													<comune>Malagnino</comune>
													<comune>Martignana di Po</comune>
													<comune>Monte Cremasco</comune>
													<comune>Montodine</comune>
													<comune>Moscazzano</comune>
													<comune>Motta Baluffi</comune>
													<comune>Offanengo</comune>
													<comune>Olmeneta</comune>
													<comune>Ostiano</comune>
													<comune>Paderno Ponchielli</comune>
													<comune>Palazzo Pignano</comune>
													<comune>Pandino</comune>
													<comune>Persico Dosimo</comune>
													<comune>Pescarolo ed Uniti</comune>
													<comune>Pessina Cremonese</comune>
													<comune>Piadena</comune>
													<comune>Pianengo</comune>
													<comune>Pieranica</comune>
													<comune>Pieve San Giacomo</comune>
													<comune>Pieve d'Olmi</comune>
													<comune>Pizzighettone</comune>
													<comune>Pozzaglio ed Uniti</comune>
													<comune>Quintano</comune>
													<comune>Ricengo</comune>
													<comune>Ripalta Arpina</comune>
													<comune>Ripalta Cremasca</comune>
													<comune>Ripalta Guerina</comune>
													<comune>Rivarolo del Re ed Uniti</comune>
													<comune>Rivolta d'Adda</comune>
													<comune>Robecco d'Oglio</comune>
													<comune>Romanengo</comune>
													<comune>Salvirola</comune>
													<comune>San Bassano</comune>
													<comune>San Daniele Po</comune>
													<comune>San Giovanni in Croce</comune>
													<comune>San Martino del Lago</comune>
													<comune>Scandolara Ravara</comune>
													<comune>Scandolara Ripa d'Oglio</comune>
													<comune>Sergnano</comune>
													<comune>Sesto ed Uniti</comune>
													<comune>Solarolo Rainerio</comune>
													<comune>Soncino</comune>
													<comune>Soresina</comune>
													<comune>Sospiro</comune>
													<comune>Spinadesco</comune>
													<comune>Spineda</comune>
													<comune>Spino d'Adda</comune>
													<comune>Stagno Lombardo</comune>
													<comune>Ticengo</comune>
													<comune>Torlino Vimercati</comune>
													<comune>Tornata</comune>
													<comune>Torre de' Picenardi</comune>
													<comune>Torricella del Pizzo</comune>
													<comune>Trescore Cremasco</comune>
													<comune>Trigolo</comune>
													<comune>Vaiano Cremasco</comune>
													<comune>Vailate</comune>
													<comune>Vescovato</comune>
													<comune>Volongo</comune>
													<comune>Voltido</comune>
												</comuni>
											</prov>
											<prov>
												<code>KR</code>
												<name>CROTONE</name>
												<region>CALABRIA</region>
												<comuni>
													<comune>Belvedere di Spinello</comune>
													<comune>Caccuri</comune>
													<comune>Carfizzi</comune>
													<comune>Casabona</comune>
													<comune>Castelsilano</comune>
													<comune>Cerenzia</comune>
													<comune>Cirà</comune>
													<comune>Cirà Marina</comune>
													<comune>Cotronei</comune>
													<comune>Crotone</comune>
													<comune>Crucoli</comune>
													<comune>Cutro</comune>
													<comune>Isola di Capo Rizzuto</comune>
													<comune>Melissa</comune>
													<comune>Mesoraca</comune>
													<comune>Pallagorio</comune>
													<comune>Petilia Policastro</comune>
													<comune>Rocca di Neto</comune>
													<comune>Roccabernarda</comune>
													<comune>San Mauro Marchesato</comune>
													<comune>San Nicola dell'Alto</comune>
													<comune>Santa Severina</comune>
													<comune>Savelli</comune>
													<comune>Scandale</comune>
													<comune>Strongoli</comune>
													<comune>Umbriatico</comune>
													<comune>Verzino</comune>
												</comuni>
											</prov>
											<prov>
												<code>CN</code>
												<name>CUNEO</name>
												<region>PIEMONTE</region>
												<comuni>
													<comune>Acceglio</comune>
													<comune>Aisone</comune>
													<comune>Alba</comune>
													<comune>Albaretto della Torre</comune>
													<comune>Alto</comune>
													<comune>Argentera</comune>
													<comune>Arguello</comune>
													<comune>Bagnasco</comune>
													<comune>Bagnolo Piemonte</comune>
													<comune>Baldissero d'Alba</comune>
													<comune>Barbaresco</comune>
													<comune>Barge</comune>
													<comune>Barolo</comune>
													<comune>Bastia Mondovà</comune>
													<comune>Battifollo</comune>
													<comune>Beinette</comune>
													<comune>Bellino</comune>
													<comune>Belvedere Langhe</comune>
													<comune>Bene Vagienna</comune>
													<comune>Benevello</comune>
													<comune>Bergolo</comune>
													<comune>Bernezzo</comune>
													<comune>Bonvicino</comune>
													<comune>Borgo San Dalmazzo</comune>
													<comune>Borgomale</comune>
													<comune>Bosia</comune>
													<comune>Bossolasco</comune>
													<comune>Boves</comune>
													<comune>Bra</comune>
													<comune>Briaglia</comune>
													<comune>Briga Alta</comune>
													<comune>Brondello</comune>
													<comune>Brossasco</comune>
													<comune>Busca</comune>
													<comune>Camerana</comune>
													<comune>Camo</comune>
													<comune>Canale</comune>
													<comune>Canosio</comune>
													<comune>Caprauna</comune>
													<comune>Caraglio</comune>
													<comune>Caramagna Piemonte</comune>
													<comune>Cardà</comune>
													<comune>Carrà</comune>
													<comune>Cartignano</comune>
													<comune>Casalgrasso</comune>
													<comune>Castagnito</comune>
													<comune>Casteldelfino</comune>
													<comune>Castellar</comune>
													<comune>Castelletto Stura</comune>
													<comune>Castelletto Uzzone</comune>
													<comune>Castellinaldo</comune>
													<comune>Castellino Tanaro</comune>
													<comune>Castelmagno</comune>
													<comune>Castelnuovo di Ceva</comune>
													<comune>Castiglione Falletto</comune>
													<comune>Castiglione Tinella</comune>
													<comune>Castino</comune>
													<comune>Cavallerleone</comune>
													<comune>Cavallermaggiore</comune>
													<comune>Celle di Macra</comune>
													<comune>Centallo</comune>
													<comune>Ceresole Alba</comune>
													<comune>Cerreto Langhe</comune>
													<comune>Cervasca</comune>
													<comune>Cervere</comune>
													<comune>Ceva</comune>
													<comune>Cherasco</comune>
													<comune>Chiusa di Pesio</comune>
													<comune>Ciglià</comune>
													<comune>Cissone</comune>
													<comune>Clavesana</comune>
													<comune>Corneliano d'Alba</comune>
													<comune>Cortemilia</comune>
													<comune>Cossano Belbo</comune>
													<comune>Costigliole Saluzzo</comune>
													<comune>Cravanzana</comune>
													<comune>Crissolo</comune>
													<comune>Cuneo</comune>
													<comune>Demonte</comune>
													<comune>Diano d'Alba</comune>
													<comune>Dogliani</comune>
													<comune>Dronero</comune>
													<comune>Elva</comune>
													<comune>Entracque</comune>
													<comune>Envie</comune>
													<comune>Farigliano</comune>
													<comune>Faule</comune>
													<comune>Feisoglio</comune>
													<comune>Fossano</comune>
													<comune>Frabosa Soprana</comune>
													<comune>Frabosa Sottana</comune>
													<comune>Frassino</comune>
													<comune>Gaiola</comune>
													<comune>Gambasca</comune>
													<comune>Garessio</comune>
													<comune>Genola</comune>
													<comune>Gorzegno</comune>
													<comune>Gottasecca</comune>
													<comune>Govone</comune>
													<comune>Grinzane Cavour</comune>
													<comune>Guarene</comune>
													<comune>Igliano</comune>
													<comune>Isasca</comune>
													<comune>La Morra</comune>
													<comune>Lagnasco</comune>
													<comune>Lequio Berria</comune>
													<comune>Lequio Tanaro</comune>
													<comune>Lesegno</comune>
													<comune>Levice</comune>
													<comune>Limone Piemonte</comune>
													<comune>Lisio</comune>
													<comune>Macra</comune>
													<comune>Magliano Alfieri</comune>
													<comune>Magliano Alpi</comune>
													<comune>Mango</comune>
													<comune>Manta</comune>
													<comune>Marene</comune>
													<comune>Margarita</comune>
													<comune>Marmora</comune>
													<comune>Marsaglia</comune>
													<comune>Martiniana Po</comune>
													<comune>Melle</comune>
													<comune>Moiola</comune>
													<comune>Mombarcaro</comune>
													<comune>Mombasiglio</comune>
													<comune>Monastero di Vasco</comune>
													<comune>Monasterolo Casotto</comune>
													<comune>Monasterolo di Savigliano</comune>
													<comune>Monchiero</comune>
													<comune>Mondovà</comune>
													<comune>Monesiglio</comune>
													<comune>Monforte d'Alba</comune>
													<comune>Montaldo Roero</comune>
													<comune>Montaldo di Mondovà</comune>
													<comune>Montanera</comune>
													<comune>Montelupo Albese</comune>
													<comune>Montemale di Cuneo</comune>
													<comune>Monterosso Grana</comune>
													<comune>Monteu Roero</comune>
													<comune>Montezemolo</comune>
													<comune>Monticello d'Alba</comune>
													<comune>Montà</comune>
													<comune>Moretta</comune>
													<comune>Morozzo</comune>
													<comune>Murazzano</comune>
													<comune>Murello</comune>
													<comune>Narzole</comune>
													<comune>Neive</comune>
													<comune>Neviglie</comune>
													<comune>Niella Belbo</comune>
													<comune>Niella Tanaro</comune>
													<comune>Novello</comune>
													<comune>Nucetto</comune>
													<comune>Oncino</comune>
													<comune>Ormea</comune>
													<comune>Ostana</comune>
													<comune>Paesana</comune>
													<comune>Pagno</comune>
													<comune>Pamparato</comune>
													<comune>Paroldo</comune>
													<comune>Perletto</comune>
													<comune>Perlo</comune>
													<comune>Peveragno</comune>
													<comune>Pezzolo Valle Uzzone</comune>
													<comune>Pianfei</comune>
													<comune>Piasco</comune>
													<comune>Pietraporzio</comune>
													<comune>Piobesi d'Alba</comune>
													<comune>Piozzo</comune>
													<comune>Pocapaglia</comune>
													<comune>Polonghera</comune>
													<comune>Pontechianale</comune>
													<comune>Pradleves</comune>
													<comune>Prazzo</comune>
													<comune>Priero</comune>
													<comune>Priocca</comune>
													<comune>Priola</comune>
													<comune>Prunetto</comune>
													<comune>Racconigi</comune>
													<comune>Revello</comune>
													<comune>Rifreddo</comune>
													<comune>Rittana</comune>
													<comune>Roaschia</comune>
													<comune>Roascio</comune>
													<comune>Robilante</comune>
													<comune>Roburent</comune>
													<comune>Rocca Ciglià</comune>
													<comune>Rocca de' Baldi</comune>
													<comune>Roccabruna</comune>
													<comune>Roccaforte Mondovà</comune>
													<comune>Roccasparvera</comune>
													<comune>Roccavione</comune>
													<comune>Rocchetta Belbo</comune>
													<comune>Roddi</comune>
													<comune>Roddino</comune>
													<comune>Rodello</comune>
													<comune>Rossana</comune>
													<comune>Ruffia</comune>
													<comune>Sale San Giovanni</comune>
													<comune>Sale delle Langhe</comune>
													<comune>Saliceto</comune>
													<comune>Salmour</comune>
													<comune>Saluzzo</comune>
													<comune>Sambuco</comune>
													<comune>Sampeyre</comune>
													<comune>San Benedetto Belbo</comune>
													<comune>San Damiano Macra</comune>
													<comune>San Michele Mondovà</comune>
													<comune>Sanfront</comune>
													<comune>Sanfrà</comune>
													<comune>Sant'Albano Stura</comune>
													<comune>Santa Vittoria d'Alba</comune>
													<comune>Santo Stefano Belbo</comune>
													<comune>Santo Stefano Roero</comune>
													<comune>Savigliano</comune>
													<comune>Scagnello</comune>
													<comune>Scarnafigi</comune>
													<comune>Serralunga d'Alba</comune>
													<comune>Serravalle Langhe</comune>
													<comune>Sinio</comune>
													<comune>Somano</comune>
													<comune>Sommariva Perno</comune>
													<comune>Sommariva del Bosco</comune>
													<comune>Stroppo</comune>
													<comune>Tarantasca</comune>
													<comune>Torre Bormida</comune>
													<comune>Torre Mondovà</comune>
													<comune>Torre San Giorgio</comune>
													<comune>Torresina</comune>
													<comune>Treiso</comune>
													<comune>Trezzo Tinella</comune>
													<comune>Trinità</comune>
													<comune>Valdieri</comune>
													<comune>Valgrana</comune>
													<comune>Valloriate</comune>
													<comune>Valmala</comune>
													<comune>Venasca</comune>
													<comune>Verduno</comune>
													<comune>Vernante</comune>
													<comune>Verzuolo</comune>
													<comune>Vezza d'Alba</comune>
													<comune>Vicoforte</comune>
													<comune>Vignolo</comune>
													<comune>Villafalletto</comune>
													<comune>Villanova Mondovà</comune>
													<comune>Villanova Solaro</comune>
													<comune>Villar San Costanzo</comune>
													<comune>Vinadio</comune>
													<comune>Viola</comune>
													<comune>Vottignasco</comune>
												</comuni>
											</prov>
											<prov>
												<code>EN</code>
												<name>ENNA</name>
												<region>SICILIA</region>
												<comuni>
													<comune>Agira</comune>
													<comune>Aidone</comune>
													<comune>Assoro</comune>
													<comune>Barrafranca</comune>
													<comune>Calascibetta</comune>
													<comune>Catenanuova</comune>
													<comune>Centuripe</comune>
													<comune>Cerami</comune>
													<comune>Enna</comune>
													<comune>Gagliano Castelferrato</comune>
													<comune>Leonforte</comune>
													<comune>Nicosia</comune>
													<comune>Nissoria</comune>
													<comune>Piazza Armerina</comune>
													<comune>Pietraperzia</comune>
													<comune>Regalbuto</comune>
													<comune>Sperlinga</comune>
													<comune>Troina</comune>
													<comune>Valguarnera Caropepe</comune>
													<comune>Villarosa</comune>
												</comuni>
											</prov>
											<prov>
												<code>FE</code>
												<name>FERRARA</name>
												<region>EMILIA ROMAGNA</region>
												<comuni>
													<comune>Argenta</comune>
													<comune>Berra</comune>
													<comune>Bondeno</comune>
													<comune>Cento</comune>
													<comune>Codigoro</comune>
													<comune>Comacchio</comune>
													<comune>Copparo</comune>
													<comune>Ferrara</comune>
													<comune>Formignana</comune>
													<comune>Goro</comune>
													<comune>Jolanda di Savoia</comune>
													<comune>Lagosanto</comune>
													<comune>Masi Torello</comune>
													<comune>Massa Fiscaglia</comune>
													<comune>Mesola</comune>
													<comune>Migliarino</comune>
													<comune>Migliaro</comune>
													<comune>Mirabello</comune>
													<comune>Ostellato</comune>
													<comune>Poggio Renatico</comune>
													<comune>Portomaggiore</comune>
													<comune>Ro</comune>
													<comune>Sant'Agostino</comune>
													<comune>Tresigallo</comune>
													<comune>Vigarano Mainarda</comune>
													<comune>Voghiera</comune>
												</comuni>
											</prov>
											<prov>
												<code>FI</code>
												<name>FIRENZE</name>
												<region>TOSCANA</region>
												<comuni>
													<comune>Bagno a Ripoli</comune>
													<comune>Barberino Val d'Elsa</comune>
													<comune>Barberino di Mugello</comune>
													<comune>Borgo San Lorenzo</comune>
													<comune>Calenzano</comune>
													<comune>Campi Bisenzio</comune>
													<comune>Capraia e Limite</comune>
													<comune>Castelfiorentino</comune>
													<comune>Cerreto Guidi</comune>
													<comune>Certaldo</comune>
													<comune>Dicomano</comune>
													<comune>Empoli</comune>
													<comune>Fiesole</comune>
													<comune>Figline Valdarno</comune>
													<comune>Firenze</comune>
													<comune>Firenzuola</comune>
													<comune>Fucecchio</comune>
													<comune>Gambassi Terme</comune>
													<comune>Greve in Chianti</comune>
													<comune>Impruneta</comune>
													<comune>Incisa in Val d'Arno</comune>
													<comune>Lastra a Signa</comune>
													<comune>Londa</comune>
													<comune>Marradi</comune>
													<comune>Montaione</comune>
													<comune>Montelupo Fiorentino</comune>
													<comune>Montespertoli</comune>
													<comune>Palazzuolo sul Senio</comune>
													<comune>Pelago</comune>
													<comune>Pontassieve</comune>
													<comune>Reggello</comune>
													<comune>Rignano sull'Arno</comune>
													<comune>Rufina</comune>
													<comune>San Casciano in Val di Pesa</comune>
													<comune>San Godenzo</comune>
													<comune>San Piero a Sieve</comune>
													<comune>Scandicci</comune>
													<comune>Scarperia</comune>
													<comune>Sesto Fiorentino</comune>
													<comune>Signa</comune>
													<comune>Tavarnelle Val di Pesa</comune>
													<comune>Vaglia</comune>
													<comune>Vicchio</comune>
													<comune>Vinci</comune>
												</comuni>
											</prov>
											<prov>
												<code>FG</code>
												<name>FOGGIA</name>
												<region>PUGLIA</region>
												<comuni>
													<comune>Accadia</comune>
													<comune>Alberona</comune>
													<comune>Anzano di Puglia</comune>
													<comune>Apricena</comune>
													<comune>Ascoli Satriano</comune>
													<comune>Biccari</comune>
													<comune>Bovino</comune>
													<comune>Cagnano Varano</comune>
													<comune>Candela</comune>
													<comune>Carapelle</comune>
													<comune>Carlantino</comune>
													<comune>Carpino</comune>
													<comune>Casalnuovo Monterotaro</comune>
													<comune>Casalvecchio di Puglia</comune>
													<comune>Castelluccio Valmaggiore</comune>
													<comune>Castelluccio dei Sauri</comune>
													<comune>Castelnuovo della Daunia</comune>
													<comune>Celenza Valfortore</comune>
													<comune>Celle di San Vito</comune>
													<comune>Cerignola</comune>
													<comune>Chieuti</comune>
													<comune>Deliceto</comune>
													<comune>Faeto</comune>
													<comune>Foggia</comune>
													<comune>Ischitella</comune>
													<comune>Isole Tremiti</comune>
													<comune>Lesina</comune>
													<comune>Lucera</comune>
													<comune>Manfredonia</comune>
													<comune>Margherita di Savoia</comune>
													<comune>Mattinata</comune>
													<comune>Monte Sant'Angelo</comune>
													<comune>Monteleone di Puglia</comune>
													<comune>Motta Montecorvino</comune>
													<comune>Ordona</comune>
													<comune>Orsara di Puglia</comune>
													<comune>Orta Nova</comune>
													<comune>Panni</comune>
													<comune>Peschici</comune>
													<comune>Pietramontecorvino</comune>
													<comune>Poggio Imperiale</comune>
													<comune>Rignano Garganico</comune>
													<comune>Rocchetta Sant'Antonio</comune>
													<comune>Rodi Garganico</comune>
													<comune>Roseto Valfortore</comune>
													<comune>San Ferdinando di Puglia</comune>
													<comune>San Giovanni Rotondo</comune>
													<comune>San Marco in Lamis</comune>
													<comune>San Marco la Catola</comune>
													<comune>San Nicandro Garganico</comune>
													<comune>San Paolo di Civitate</comune>
													<comune>San Severo</comune>
													<comune>Sant'Agata di Puglia</comune>
													<comune>Serracapriola</comune>
													<comune>Stornara</comune>
													<comune>Stornarella</comune>
													<comune>Torremaggiore</comune>
													<comune>Trinitapoli</comune>
													<comune>Troia</comune>
													<comune>Vico del Gargano</comune>
													<comune>Vieste</comune>
													<comune>Volturara Appula</comune>
													<comune>Volturino</comune>
													<comune>Zapponeta</comune>
												</comuni>
											</prov>
											<prov>
												<code>FC</code>
												<name>FORLI - CESENA</name>
												<region>EMILIA ROMAGNA</region>
												<comuni>
													<comune>Bagno di Romagna</comune>
													<comune>Bertinoro</comune>
													<comune>Borghi</comune>
													<comune>Castrocaro Terme e Terra del Sole</comune>
													<comune>Cesena</comune>
													<comune>Cesenatico</comune>
													<comune>Civitella di Romagna</comune>
													<comune>Dovadola</comune>
													<comune>Forlimpopoli</comune>
													<comune>Forlà</comune>
													<comune>Galeata</comune>
													<comune>Gambettola</comune>
													<comune>Gatteo</comune>
													<comune>Longiano</comune>
													<comune>Meldola</comune>
													<comune>Mercato Saraceno</comune>
													<comune>Modigliana</comune>
													<comune>Montiano</comune>
													<comune>Portico e San Benedetto</comune>
													<comune>Predappio</comune>
													<comune>Premilcuore</comune>
													<comune>Rocca San Casciano</comune>
													<comune>Roncofreddo</comune>
													<comune>San Mauro Pascoli</comune>
													<comune>Santa Sofia</comune>
													<comune>Sarsina</comune>
													<comune>Savignano sul Rubicone</comune>
													<comune>Sogliano al Rubicone</comune>
													<comune>Tredozio</comune>
													<comune>Verghereto</comune>
												</comuni>
											</prov>
											<prov>
												<code>FR</code>
												<name>FROSINONE</name>
												<region>LAZIO</region>
												<comuni>
													<comune>Acquafondata</comune>
													<comune>Acuto</comune>
													<comune>Alatri</comune>
													<comune>Alvito</comune>
													<comune>Amaseno</comune>
													<comune>Anagni</comune>
													<comune>Aquino</comune>
													<comune>Arce</comune>
													<comune>Arnara</comune>
													<comune>Arpino</comune>
													<comune>Atina</comune>
													<comune>Ausonia</comune>
													<comune>Belmonte Castello</comune>
													<comune>Boville Ernica</comune>
													<comune>Broccostella</comune>
													<comune>Campoli Appennino</comune>
													<comune>Casalattico</comune>
													<comune>Casalvieri</comune>
													<comune>Cassino</comune>
													<comune>Castelliri</comune>
													<comune>Castelnuovo Parano</comune>
													<comune>Castro dei Volsci</comune>
													<comune>Castrocielo</comune>
													<comune>Ceccano</comune>
													<comune>Ceprano</comune>
													<comune>Cervaro</comune>
													<comune>Colfelice</comune>
													<comune>Colle San Magno</comune>
													<comune>Collepardo</comune>
													<comune>Coreno Ausonio</comune>
													<comune>Esperia</comune>
													<comune>Falvaterra</comune>
													<comune>Ferentino</comune>
													<comune>Filettino</comune>
													<comune>Fiuggi</comune>
													<comune>Fontana Liri</comune>
													<comune>Fontechiari</comune>
													<comune>Frosinone</comune>
													<comune>Fumone</comune>
													<comune>Gallinaro</comune>
													<comune>Giuliano di Roma</comune>
													<comune>Guarcino</comune>
													<comune>Isola del Liri</comune>
													<comune>Monte San Giovanni Campano</comune>
													<comune>Morolo</comune>
													<comune>Paliano</comune>
													<comune>Pastena</comune>
													<comune>Patrica</comune>
													<comune>Pescosolido</comune>
													<comune>Picinisco</comune>
													<comune>Pico</comune>
													<comune>Piedimonte San Germano</comune>
													<comune>Piglio</comune>
													<comune>Pignataro Interamna</comune>
													<comune>Pofi</comune>
													<comune>Pontecorvo</comune>
													<comune>Posta Fibreno</comune>
													<comune>Ripi</comune>
													<comune>Rocca d'Arce</comune>
													<comune>Roccasecca</comune>
													<comune>San Biagio Saracinisco</comune>
													<comune>San Donato Val di Comino</comune>
													<comune>San Giorgio a Liri</comune>
													<comune>San Giovanni Incarico</comune>
													<comune>San Vittore del Lazio</comune>
													<comune>Sant'Ambrogio sul Garigliano</comune>
													<comune>Sant'Andrea del Garigliano</comune>
													<comune>Sant'Apollinare</comune>
													<comune>Sant'Elia Fiumerapido</comune>
													<comune>Santopadre</comune>
													<comune>Serrone</comune>
													<comune>Settefrati</comune>
													<comune>Sgurgola</comune>
													<comune>Sora</comune>
													<comune>Strangolagalli</comune>
													<comune>Supino</comune>
													<comune>Terelle</comune>
													<comune>Torre Cajetani</comune>
													<comune>Torrice</comune>
													<comune>Trevi nel Lazio</comune>
													<comune>Trivigliano</comune>
													<comune>Vallecorsa</comune>
													<comune>Vallemaio</comune>
													<comune>Vallerotonda</comune>
													<comune>Veroli</comune>
													<comune>Vicalvi</comune>
													<comune>Vico nel Lazio</comune>
													<comune>Villa Latina</comune>
													<comune>Villa Santa Lucia</comune>
													<comune>Villa Santo Stefano</comune>
													<comune>Viticuso</comune>
												</comuni>
											</prov>
											<prov>
												<code>GE</code>
												<name>GENOVA</name>
												<region>LIGURIA</region>
												<comuni>
													<comune>Arenzano</comune>
													<comune>Avegno</comune>
													<comune>Bargagli</comune>
													<comune>Bogliasco</comune>
													<comune>Borzonasca</comune>
													<comune>Busalla</comune>
													<comune>Camogli</comune>
													<comune>Campo Ligure</comune>
													<comune>Campomorone</comune>
													<comune>Carasco</comune>
													<comune>Casarza Ligure</comune>
													<comune>Casella</comune>
													<comune>Castiglione Chiavarese</comune>
													<comune>Ceranesi</comune>
													<comune>Chiavari</comune>
													<comune>Cicagna</comune>
													<comune>Cogoleto</comune>
													<comune>Cogorno</comune>
													<comune>Coreglia Ligure</comune>
													<comune>Crocefieschi</comune>
													<comune>Davagna</comune>
													<comune>Fascia</comune>
													<comune>Favale di Malvaro</comune>
													<comune>Fontanigorda</comune>
													<comune>Genova</comune>
													<comune>Gorreto</comune>
													<comune>Isola del Cantone</comune>
													<comune>Lavagna</comune>
													<comune>Leivi</comune>
													<comune>Lorsica</comune>
													<comune>Lumarzo</comune>
													<comune>Masone</comune>
													<comune>Mele</comune>
													<comune>Mezzanego</comune>
													<comune>Mignanego</comune>
													<comune>Moconesi</comune>
													<comune>Moneglia</comune>
													<comune>Montebruno</comune>
													<comune>Montoggio</comune>
													<comune>Ne</comune>
													<comune>Neirone</comune>
													<comune>Orero</comune>
													<comune>Pieve Ligure</comune>
													<comune>Portofino</comune>
													<comune>Propata</comune>
													<comune>Rapallo</comune>
													<comune>Recco</comune>
													<comune>Rezzoaglio</comune>
													<comune>Ronco Scrivia</comune>
													<comune>Rondanina</comune>
													<comune>Rossiglione</comune>
													<comune>Rovegno</comune>
													<comune>San Colombano Certenoli</comune>
													<comune>Sant'Olcese</comune>
													<comune>Santa Margherita Ligure</comune>
													<comune>Santo Stefano d'Aveto</comune>
													<comune>Savignone</comune>
													<comune>Serra Riccà</comune>
													<comune>Sestri Levante</comune>
													<comune>Sori</comune>
													<comune>Tiglieto</comune>
													<comune>Torriglia</comune>
													<comune>Tribogna</comune>
													<comune>Uscio</comune>
													<comune>Valbrevenna</comune>
													<comune>Vobbia</comune>
													<comune>Zoagli</comune>
												</comuni>
											</prov>
											<prov>
												<code>GO</code>
												<name>GORIZIA</name>
												<region>FRIULI VENEZIA GIULIA</region>
												<comuni>
													<comune>Capriva del Friuli</comune>
													<comune>Cormons</comune>
													<comune>Doberdà del Lago</comune>
													<comune>Dolegna del Collio</comune>
													<comune>Farra d'Isonzo</comune>
													<comune>Fogliano Redipuglia</comune>
													<comune>Gorizia</comune>
													<comune>Gradisca d'Isonzo</comune>
													<comune>Grado</comune>
													<comune>Mariano del Friuli</comune>
													<comune>Medea</comune>
													<comune>Monfalcone</comune>
													<comune>Moraro</comune>
													<comune>Mossa</comune>
													<comune>Romans d'Isonzo</comune>
													<comune>Ronchi dei Legionari</comune>
													<comune>Sagrado</comune>
													<comune>San Canzian d'Isonzo</comune>
													<comune>San Floriano del Collio</comune>
													<comune>San Lorenzo Isontino</comune>
													<comune>San Pier d'Isonzo</comune>
													<comune>Savogna d'Isonzo</comune>
													<comune>Staranzano</comune>
													<comune>Turriaco</comune>
													<comune>Villesse</comune>
												</comuni>
											</prov>
											<prov>
												<code>GR</code>
												<name>GROSSETO</name>
												<region>TOSCANA</region>
												<comuni>
													<comune>Arcidosso</comune>
													<comune>Campagnatico</comune>
													<comune>Capalbio</comune>
													<comune>Castel del Piano</comune>
													<comune>Castell'Azzara</comune>
													<comune>Castiglione della Pescaia</comune>
													<comune>Cinigiano</comune>
													<comune>Civitella Paganico</comune>
													<comune>Follonica</comune>
													<comune>Gavorrano</comune>
													<comune>Grosseto</comune>
													<comune>Isola del Giglio</comune>
													<comune>Magliano in Toscana</comune>
													<comune>Manciano</comune>
													<comune>Massa Marittima</comune>
													<comune>Monte Argentario</comune>
													<comune>Monterotondo Marittimo</comune>
													<comune>Montieri</comune>
													<comune>Orbetello</comune>
													<comune>Pitigliano</comune>
													<comune>Roccalbegna</comune>
													<comune>Roccastrada</comune>
													<comune>Santa Fiora</comune>
													<comune>Scansano</comune>
													<comune>Scarlino</comune>
													<comune>Seggiano</comune>
													<comune>Semproniano</comune>
													<comune>Sorano</comune>
												</comuni>
											</prov>
											<prov>
												<code>IM</code>
												<name>IMPERIA</name>
												<region>LIGURIA</region>
												<comuni>
													<comune>Airole</comune>
													<comune>Apricale</comune>
													<comune>Aquila di Arroscia</comune>
													<comune>Armo</comune>
													<comune>Aurigo</comune>
													<comune>Badalucco</comune>
													<comune>Bajardo</comune>
													<comune>Bordighera</comune>
													<comune>Borghetto d'Arroscia</comune>
													<comune>Borgomaro</comune>
													<comune>Camporosso</comune>
													<comune>Caravonica</comune>
													<comune>Carpasio</comune>
													<comune>Castel Vittorio</comune>
													<comune>Castellaro</comune>
													<comune>Ceriana</comune>
													<comune>Cervo</comune>
													<comune>Cesio</comune>
													<comune>Chiusanico</comune>
													<comune>Chiusavecchia</comune>
													<comune>Cipressa</comune>
													<comune>Civezza</comune>
													<comune>Cosio di Arroscia</comune>
													<comune>Costarainera</comune>
													<comune>Diano Arentino</comune>
													<comune>Diano Castello</comune>
													<comune>Diano Marina</comune>
													<comune>Diano San Pietro</comune>
													<comune>Dolceacqua</comune>
													<comune>Dolcedo</comune>
													<comune>Imperia</comune>
													<comune>Isolabona</comune>
													<comune>Lucinasco</comune>
													<comune>Mendatica</comune>
													<comune>Molini di Triora</comune>
													<comune>Montalto Ligure</comune>
													<comune>Montegrosso Pian Latte</comune>
													<comune>Olivetta San Michele</comune>
													<comune>Ospedaletti</comune>
													<comune>Perinaldo</comune>
													<comune>Pietrabruna</comune>
													<comune>Pieve di Teco</comune>
													<comune>Pigna</comune>
													<comune>Pompeiana</comune>
													<comune>Pontedassio</comune>
													<comune>Pornassio</comune>
													<comune>Prelà</comune>
													<comune>Ranzo</comune>
													<comune>Rezzo</comune>
													<comune>Riva Ligure</comune>
													<comune>Rocchetta Nervina</comune>
													<comune>San Bartolomeo al Mare</comune>
													<comune>San Biagio della Cima</comune>
													<comune>San Lorenzo al Mare</comune>
													<comune>San Remo</comune>
													<comune>Santo Stefano al Mare</comune>
													<comune>Seborga</comune>
													<comune>Soldano</comune>
													<comune>Taggia</comune>
													<comune>Terzorio</comune>
													<comune>Triora</comune>
													<comune>Vallebona</comune>
													<comune>Vallecrosia</comune>
													<comune>Vasia</comune>
													<comune>Ventimiglia</comune>
													<comune>Vessalico</comune>
													<comune>Villa Faraldi</comune>
												</comuni>
											</prov>
											<prov>
												<code>IS</code>
												<name>ISERNIA</name>
												<region>MOLISE</region>
												<comuni>
													<comune>Acquaviva d'Isernia</comune>
													<comune>Agnone</comune>
													<comune>Bagnoli del Trigno</comune>
													<comune>Belmonte del Sannio</comune>
													<comune>Cantalupo nel Sannio</comune>
													<comune>Capracotta</comune>
													<comune>Carovilli</comune>
													<comune>Carpinone</comune>
													<comune>Castel San Vincenzo</comune>
													<comune>Castel del Giudice</comune>
													<comune>Castelpetroso</comune>
													<comune>Castelpizzuto</comune>
													<comune>Castelverrino</comune>
													<comune>Cerro al Volturno</comune>
													<comune>Chiauci</comune>
													<comune>Civitanova del Sannio</comune>
													<comune>Colli a Volturno</comune>
													<comune>Conca Casale</comune>
													<comune>Filignano</comune>
													<comune>Forlà del Sannio</comune>
													<comune>Fornelli</comune>
													<comune>Frosolone</comune>
													<comune>Isernia</comune>
													<comune>Longano</comune>
													<comune>Macchia d'Isernia</comune>
													<comune>Macchiagodena</comune>
													<comune>Miranda</comune>
													<comune>Montaquila</comune>
													<comune>Montenero Val Cocchiara</comune>
													<comune>Monteroduni</comune>
													<comune>Pesche</comune>
													<comune>Pescolanciano</comune>
													<comune>Pescopennataro</comune>
													<comune>Pettoranello del Molise</comune>
													<comune>Pietrabbondante</comune>
													<comune>Pizzone</comune>
													<comune>Poggio Sannita</comune>
													<comune>Pozzilli</comune>
													<comune>Rionero Sannitico</comune>
													<comune>Roccamandolfi</comune>
													<comune>Roccasicura</comune>
													<comune>Rocchetta a Volturno</comune>
													<comune>San Pietro Avellana</comune>
													<comune>Sant'Agapito</comune>
													<comune>Sant'Angelo del Pesco</comune>
													<comune>Sant'Elena Sannita</comune>
													<comune>Santa Maria del Molise</comune>
													<comune>Scapoli</comune>
													<comune>Sessano del Molise</comune>
													<comune>Sesto Campano</comune>
													<comune>Vastogirardi</comune>
													<comune>Venafro</comune>
												</comuni>
											</prov>
											<prov>
												<code>AQ</code>
												<name>L'AQUILA</name>
												<region>ABRUZZO</region>
												<comuni>
													<comune>Acciano</comune>
													<comune>Aielli</comune>
													<comune>Alfedena</comune>
													<comune>Anversa degli Abruzzi</comune>
													<comune>Ateleta</comune>
													<comune>Avezzano</comune>
													<comune>Balsorano</comune>
													<comune>Barete</comune>
													<comune>Barisciano</comune>
													<comune>Barrea</comune>
													<comune>Bisegna</comune>
													<comune>Bugnara</comune>
													<comune>Cagnano Amiterno</comune>
													<comune>Calascio</comune>
													<comune>Campo di Giove</comune>
													<comune>Campotosto</comune>
													<comune>Canistro</comune>
													<comune>Cansano</comune>
													<comune>Capestrano</comune>
													<comune>Capistrello</comune>
													<comune>Capitignano</comune>
													<comune>Caporciano</comune>
													<comune>Cappadocia</comune>
													<comune>Carapelle Calvisio</comune>
													<comune>Carsoli</comune>
													<comune>Castel del Monte</comune>
													<comune>Castel di Ieri</comune>
													<comune>Castel di Sangro</comune>
													<comune>Castellafiume</comune>
													<comune>Castelvecchio Calvisio</comune>
													<comune>Castelvecchio Subequo</comune>
													<comune>Celano</comune>
													<comune>Cerchio</comune>
													<comune>Civita d'Antino</comune>
													<comune>Civitella Alfedena</comune>
													<comune>Civitella Roveto</comune>
													<comune>Cocullo</comune>
													<comune>Collarmele</comune>
													<comune>Collelongo</comune>
													<comune>Collepietro</comune>
													<comune>Corfinio</comune>
													<comune>Fagnano Alto</comune>
													<comune>Fontecchio</comune>
													<comune>Fossa</comune>
													<comune>Gagliano Aterno</comune>
													<comune>Gioia dei Marsi</comune>
													<comune>Goriano Sicoli</comune>
													<comune>Introdacqua</comune>
													<comune>L'Aquila</comune>
													<comune>Lecce nei Marsi</comune>
													<comune>Luco dei Marsi</comune>
													<comune>Lucoli</comune>
													<comune>Magliano de' Marsi</comune>
													<comune>Massa d'Albe</comune>
													<comune>Molina Aterno</comune>
													<comune>Montereale</comune>
													<comune>Morino</comune>
													<comune>Navelli</comune>
													<comune>Ocre</comune>
													<comune>Ofena</comune>
													<comune>Opi</comune>
													<comune>Oricola</comune>
													<comune>Ortona dei Marsi</comune>
													<comune>Ortucchio</comune>
													<comune>Ovindoli</comune>
													<comune>Pacentro</comune>
													<comune>Pereto</comune>
													<comune>Pescasseroli</comune>
													<comune>Pescina</comune>
													<comune>Pescocostanzo</comune>
													<comune>Pettorano sul Gizio</comune>
													<comune>Pizzoli</comune>
													<comune>Poggio Picenze</comune>
													<comune>Prata d'Ansidonia</comune>
													<comune>Pratola Peligna</comune>
													<comune>Prezza</comune>
													<comune>Raiano</comune>
													<comune>Rivisondoli</comune>
													<comune>Rocca Pia</comune>
													<comune>Rocca di Botte</comune>
													<comune>Rocca di Cambio</comune>
													<comune>Rocca di Mezzo</comune>
													<comune>Roccacasale</comune>
													<comune>Roccaraso</comune>
													<comune>San Benedetto dei Marsi</comune>
													<comune>San Benedetto in Perillis</comune>
													<comune>San Demetrio ne' Vestini</comune>
													<comune>San Pio delle Camere</comune>
													<comune>San Vincenzo Valle Roveto</comune>
													<comune>Sant'Eusanio Forconese</comune>
													<comune>Sante Marie</comune>
													<comune>Santo Stefano di Sessanio</comune>
													<comune>Scanno</comune>
													<comune>Scontrone</comune>
													<comune>Scoppito</comune>
													<comune>Scurcola Marsicana</comune>
													<comune>Secinaro</comune>
													<comune>Sulmona</comune>
													<comune>Tagliacozzo</comune>
													<comune>Tione degli Abruzzi</comune>
													<comune>Tornimparte</comune>
													<comune>Trasacco</comune>
													<comune>Villa Sant'Angelo</comune>
													<comune>Villa Santa Lucia degli Abruzzi</comune>
													<comune>Villalago</comune>
													<comune>Villavallelonga</comune>
													<comune>Villetta Barrea</comune>
													<comune>Vittorito</comune>
												</comuni>
											</prov>
											<prov>
												<code>SP</code>
												<name>LA SPEZIA</name>
												<region>LIGURIA</region>
												<comuni>
													<comune>Ameglia</comune>
													<comune>Arcola</comune>
													<comune>Beverino</comune>
													<comune>Bolano</comune>
													<comune>Bonassola</comune>
													<comune>Borghetto di Vara</comune>
													<comune>Brugnato</comune>
													<comune>Calice al Cornoviglio</comune>
													<comune>Carro</comune>
													<comune>Carrodano</comune>
													<comune>Castelnuovo Magra</comune>
													<comune>Deiva Marina</comune>
													<comune>Follo</comune>
													<comune>Framura</comune>
													<comune>La Spezia</comune>
													<comune>Lerici</comune>
													<comune>Levanto</comune>
													<comune>Maissana</comune>
													<comune>Monterosso al Mare</comune>
													<comune>Ortonovo</comune>
													<comune>Pignone</comune>
													<comune>Portovenere</comune>
													<comune>Riccà del Golfo di Spezia</comune>
													<comune>Riomaggiore</comune>
													<comune>Rocchetta di Vara</comune>
													<comune>Santo Stefano di Magra</comune>
													<comune>Sarzana</comune>
													<comune>Sesta Godano</comune>
													<comune>Varese Ligure</comune>
													<comune>Vernazza</comune>
													<comune>Vezzano Ligure</comune>
													<comune>Zignago</comune>
												</comuni>
											</prov>
											<prov>
												<code>LT</code>
												<name>LATINA</name>
												<region>LAZIO</region>
												<comuni>
													<comune>Aprilia</comune>
													<comune>Bassiano</comune>
													<comune>Campodimele</comune>
													<comune>Castelforte</comune>
													<comune>Cisterna di Latina</comune>
													<comune>Cori</comune>
													<comune>Fondi</comune>
													<comune>Formia</comune>
													<comune>Gaeta</comune>
													<comune>Itri</comune>
													<comune>Latina</comune>
													<comune>Lenola</comune>
													<comune>Maenza</comune>
													<comune>Minturno</comune>
													<comune>Monte San Biagio</comune>
													<comune>Norma</comune>
													<comune>Pontinia</comune>
													<comune>Ponza</comune>
													<comune>Priverno</comune>
													<comune>Prossedi</comune>
													<comune>Rocca Massima</comune>
													<comune>Roccagorga</comune>
													<comune>Roccasecca dei Volsci</comune>
													<comune>Sabaudia</comune>
													<comune>San Felice Circeo</comune>
													<comune>Santi Cosma e Damiano</comune>
													<comune>Sermoneta</comune>
													<comune>Sezze</comune>
													<comune>Sonnino</comune>
													<comune>Sperlonga</comune>
													<comune>Spigno Saturnia</comune>
													<comune>Terracina</comune>
													<comune>Ventotene</comune>
												</comuni>
											</prov>
											<prov>
												<code>LE</code>
												<name>LECCE</name>
												<region>PUGLIA</region>
												<comuni>
													<comune>Acquarica del Capo</comune>
													<comune>Alessano</comune>
													<comune>Alezio</comune>
													<comune>Alliste</comune>
													<comune>Andrano</comune>
													<comune>Aradeo</comune>
													<comune>Arnesano</comune>
													<comune>Bagnolo del Salento</comune>
													<comune>Botrugno</comune>
													<comune>Calimera</comune>
													<comune>Campi Salentina</comune>
													<comune>Cannole</comune>
													<comune>Caprarica di Lecce</comune>
													<comune>Carmiano</comune>
													<comune>Carpignano Salentino</comune>
													<comune>Casarano</comune>
													<comune>Castri di Lecce</comune>
													<comune>Castrignano de' Greci</comune>
													<comune>Castrignano del Capo</comune>
													<comune>Castro</comune>
													<comune>Cavallino</comune>
													<comune>Collepasso</comune>
													<comune>Copertino</comune>
													<comune>Corigliano d'Otranto</comune>
													<comune>Corsano</comune>
													<comune>Cursi</comune>
													<comune>Cutrofiano</comune>
													<comune>Diso</comune>
													<comune>Gagliano del Capo</comune>
													<comune>Galatina</comune>
													<comune>Galatone</comune>
													<comune>Gallipoli</comune>
													<comune>Giuggianello</comune>
													<comune>Giurdignano</comune>
													<comune>Guagnano</comune>
													<comune>Lecce</comune>
													<comune>Lequile</comune>
													<comune>Leverano</comune>
													<comune>Lizzanello</comune>
													<comune>Maglie</comune>
													<comune>Martano</comune>
													<comune>Martignano</comune>
													<comune>Matino</comune>
													<comune>Melendugno</comune>
													<comune>Melissano</comune>
													<comune>Melpignano</comune>
													<comune>Miggiano</comune>
													<comune>Minervino di Lecce</comune>
													<comune>Monteroni di Lecce</comune>
													<comune>Montesano Salentino</comune>
													<comune>Morciano di Leuca</comune>
													<comune>Muro Leccese</comune>
													<comune>Nardà</comune>
													<comune>Neviano</comune>
													<comune>Nociglia</comune>
													<comune>Novoli</comune>
													<comune>Ortelle</comune>
													<comune>Otranto</comune>
													<comune>Palmariggi</comune>
													<comune>Parabita</comune>
													<comune>Patà</comune>
													<comune>Poggiardo</comune>
													<comune>Porto Cesareo</comune>
													<comune>Presicce</comune>
													<comune>Racale</comune>
													<comune>Ruffano</comune>
													<comune>Salice Salentino</comune>
													<comune>Salve</comune>
													<comune>San Cassiano</comune>
													<comune>San Cesario di Lecce</comune>
													<comune>San Donato di Lecce</comune>
													<comune>San Pietro in Lama</comune>
													<comune>Sanarica</comune>
													<comune>Sannicola</comune>
													<comune>Santa Cesarea Terme</comune>
													<comune>Scorrano</comune>
													<comune>Seclà</comune>
													<comune>Sogliano Cavour</comune>
													<comune>Soleto</comune>
													<comune>Specchia</comune>
													<comune>Spongano</comune>
													<comune>Squinzano</comune>
													<comune>Sternatia</comune>
													<comune>Supersano</comune>
													<comune>Surano</comune>
													<comune>Surbo</comune>
													<comune>Taurisano</comune>
													<comune>Taviano</comune>
													<comune>Tiggiano</comune>
													<comune>Trepuzzi</comune>
													<comune>Tricase</comune>
													<comune>Tuglie</comune>
													<comune>Ugento</comune>
													<comune>Uggiano La Chiesa</comune>
													<comune>Veglie</comune>
													<comune>Vernole</comune>
													<comune>Zollino</comune>
												</comuni>
											</prov>
											<prov>
												<code>LC</code>
												<name>LECCO</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Abbadia Lariana</comune>
													<comune>Airuno</comune>
													<comune>Annone di Brianza</comune>
													<comune>Ballabio</comune>
													<comune>Barzago</comune>
													<comune>Barzanà</comune>
													<comune>Barzio</comune>
													<comune>Bellano</comune>
													<comune>Bosisio Parini</comune>
													<comune>Brivio</comune>
													<comune>Bulciago</comune>
													<comune>Calco</comune>
													<comune>Calolziocorte</comune>
													<comune>Carenno</comune>
													<comune>Casargo</comune>
													<comune>Casatenovo</comune>
													<comune>Cassago Brianza</comune>
													<comune>Cassina Valsassina</comune>
													<comune>Castello di Brianza</comune>
													<comune>Cernusco Lombardone</comune>
													<comune>Cesana Brianza</comune>
													<comune>Civate</comune>
													<comune>Colico</comune>
													<comune>Colle Brianza</comune>
													<comune>Cortenova</comune>
													<comune>Costa Masnaga</comune>
													<comune>Crandola Valsassina</comune>
													<comune>Cremella</comune>
													<comune>Cremeno</comune>
													<comune>Dervio</comune>
													<comune>Dolzago</comune>
													<comune>Dorio</comune>
													<comune>Ello</comune>
													<comune>Erve</comune>
													<comune>Esino Lario</comune>
													<comune>Galbiate</comune>
													<comune>Garbagnate Monastero</comune>
													<comune>Garlate</comune>
													<comune>Imbersago</comune>
													<comune>Introbio</comune>
													<comune>Introzzo</comune>
													<comune>Lecco</comune>
													<comune>Lierna</comune>
													<comune>Lomagna</comune>
													<comune>Malgrate</comune>
													<comune>Mandello del Lario</comune>
													<comune>Margno</comune>
													<comune>Merate</comune>
													<comune>Missaglia</comune>
													<comune>Moggio</comune>
													<comune>Molteno</comune>
													<comune>Monte Marenzo</comune>
													<comune>Montevecchia</comune>
													<comune>Monticello Brianza</comune>
													<comune>Morterone</comune>
													<comune>Nibionno</comune>
													<comune>Oggiono</comune>
													<comune>Olgiate Molgora</comune>
													<comune>Olginate</comune>
													<comune>Oliveto Lario</comune>
													<comune>Osnago</comune>
													<comune>Paderno d'Adda</comune>
													<comune>Pagnona</comune>
													<comune>Parlasco</comune>
													<comune>Pasturo</comune>
													<comune>Perego</comune>
													<comune>Perledo</comune>
													<comune>Pescate</comune>
													<comune>Premana</comune>
													<comune>Primaluna</comune>
													<comune>Robbiate</comune>
													<comune>Rogeno</comune>
													<comune>Rovagnate</comune>
													<comune>Santa Maria Hoà</comune>
													<comune>Sirone</comune>
													<comune>Sirtori</comune>
													<comune>Sueglio</comune>
													<comune>Suello</comune>
													<comune>Taceno</comune>
													<comune>Torre de' Busi</comune>
													<comune>Tremenico</comune>
													<comune>Valgreghentino</comune>
													<comune>Valmadrera</comune>
													<comune>Varenna</comune>
													<comune>Vendrogno</comune>
													<comune>Vercurago</comune>
													<comune>Verderio Inferiore</comune>
													<comune>Verderio Superiore</comune>
													<comune>Vestreno</comune>
													<comune>Viganà</comune>
												</comuni>
											</prov>
											<prov>
												<code>LI</code>
												<name>LIVORNO</name>
												<region>TOSCANA</region>
												<comuni>
													<comune>Bibbona</comune>
													<comune>Campiglia Marittima</comune>
													<comune>Campo nell'Elba</comune>
													<comune>Capoliveri</comune>
													<comune>Capraia Isola</comune>
													<comune>Castagneto Carducci</comune>
													<comune>Cecina</comune>
													<comune>Collesalvetti</comune>
													<comune>Livorno</comune>
													<comune>Marciana</comune>
													<comune>Marciana Marina</comune>
													<comune>Piombino</comune>
													<comune>Porto Azzurro</comune>
													<comune>Portoferraio</comune>
													<comune>Rio Marina</comune>
													<comune>Rio nell'Elba</comune>
													<comune>Rosignano Marittimo</comune>
													<comune>San Vincenzo</comune>
													<comune>Sassetta</comune>
													<comune>Suvereto</comune>
												</comuni>
											</prov>
											<prov>
												<code>LO</code>
												<name>LODI</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Abbadia Cerreto</comune>
													<comune>Bertonico</comune>
													<comune>Boffalora d'Adda</comune>
													<comune>Borghetto Lodigiano</comune>
													<comune>Borgo San Giovanni</comune>
													<comune>Brembio</comune>
													<comune>Camairago</comune>
													<comune>Casaletto Lodigiano</comune>
													<comune>Casalmaiocco</comune>
													<comune>Casalpusterlengo</comune>
													<comune>Caselle Landi</comune>
													<comune>Caselle Lurani</comune>
													<comune>Castelnuovo Bocca d'Adda</comune>
													<comune>Castiglione d'Adda</comune>
													<comune>Castiraga Vidardo</comune>
													<comune>Cavacurta</comune>
													<comune>Cavenago d'Adda</comune>
													<comune>Cervignano d'Adda</comune>
													<comune>Codogno</comune>
													<comune>Comazzo</comune>
													<comune>Cornegliano Laudense</comune>
													<comune>Corno Giovine</comune>
													<comune>Cornovecchio</comune>
													<comune>Corte Palasio</comune>
													<comune>Crespiatica</comune>
													<comune>Fombio</comune>
													<comune>Galgagnano</comune>
													<comune>Graffignana</comune>
													<comune>Guardamiglio</comune>
													<comune>Livraga</comune>
													<comune>Lodi</comune>
													<comune>Lodi Vecchio</comune>
													<comune>Maccastorna</comune>
													<comune>Mairago</comune>
													<comune>Maleo</comune>
													<comune>Marudo</comune>
													<comune>Massalengo</comune>
													<comune>Meleti</comune>
													<comune>Merlino</comune>
													<comune>Montanaso Lombardo</comune>
													<comune>Mulazzano</comune>
													<comune>Orio Litta</comune>
													<comune>Ospedaletto Lodigiano</comune>
													<comune>Ossago Lodigiano</comune>
													<comune>Pieve Fissiraga</comune>
													<comune>Salerano sul Lambro</comune>
													<comune>San Fiorano</comune>
													<comune>San Martino in Strada</comune>
													<comune>San Rocco al Porto</comune>
													<comune>Sant'Angelo Lodigiano</comune>
													<comune>Santo Stefano Lodigiano</comune>
													<comune>Secugnago</comune>
													<comune>Senna Lodigiana</comune>
													<comune>Somaglia</comune>
													<comune>Sordio</comune>
													<comune>Tavazzano con Villavesco</comune>
													<comune>Terranova dei Passerini</comune>
													<comune>Turano Lodigiano</comune>
													<comune>Valera Fratta</comune>
													<comune>Villanova del Sillaro</comune>
													<comune>Zelo Buon Persico</comune>
												</comuni>
											</prov>
											<prov>
												<code>LU</code>
												<name>LUCCA</name>
												<region>TOSCANA</region>
												<comuni>
													<comune>Altopascio</comune>
													<comune>Bagni di Lucca</comune>
													<comune>Barga</comune>
													<comune>Borgo a Mozzano</comune>
													<comune>Camaiore</comune>
													<comune>Camporgiano</comune>
													<comune>Capannori</comune>
													<comune>Careggine</comune>
													<comune>Castelnuovo di Garfagnana</comune>
													<comune>Castiglione di Garfagnana</comune>
													<comune>Coreglia Antelminelli</comune>
													<comune>Fabbriche di Vallico</comune>
													<comune>Forte dei Marmi</comune>
													<comune>Fosciandora</comune>
													<comune>Gallicano</comune>
													<comune>Giuncugnano</comune>
													<comune>Lucca</comune>
													<comune>Massarosa</comune>
													<comune>Minucciano</comune>
													<comune>Molazzana</comune>
													<comune>Montecarlo</comune>
													<comune>Pescaglia</comune>
													<comune>Piazza al Serchio</comune>
													<comune>Pietrasanta</comune>
													<comune>Pieve Fosciana</comune>
													<comune>Porcari</comune>
													<comune>San Romano in Garfagnana</comune>
													<comune>Seravezza</comune>
													<comune>Sillano</comune>
													<comune>Stazzema</comune>
													<comune>Vagli Sotto</comune>
													<comune>Vergemoli</comune>
													<comune>Viareggio</comune>
													<comune>Villa Basilica</comune>
													<comune>Villa Collemandina</comune>
												</comuni>
											</prov>
											<prov>
												<code>MC</code>
												<name>MACERATA</name>
												<region>MARCHE</region>
												<comuni>
													<comune>Acquacanina</comune>
													<comune>Apiro</comune>
													<comune>Appignano</comune>
													<comune>Belforte del Chienti</comune>
													<comune>Bolognola</comune>
													<comune>Caldarola</comune>
													<comune>Camerino</comune>
													<comune>Camporotondo di Fiastrone</comune>
													<comune>Castelraimondo</comune>
													<comune>Castelsantangelo sul Nera</comune>
													<comune>Cessapalombo</comune>
													<comune>Cingoli</comune>
													<comune>Civitanova Marche</comune>
													<comune>Colmurano</comune>
													<comune>Corridonia</comune>
													<comune>Esanatoglia</comune>
													<comune>Fiastra</comune>
													<comune>Fiordimonte</comune>
													<comune>Fiuminata</comune>
													<comune>Gagliole</comune>
													<comune>Gualdo</comune>
													<comune>Loro Piceno</comune>
													<comune>Macerata</comune>
													<comune>Matelica</comune>
													<comune>Mogliano</comune>
													<comune>Monte Cavallo</comune>
													<comune>Monte San Giusto</comune>
													<comune>Monte San Martino</comune>
													<comune>Montecassiano</comune>
													<comune>Montecosaro</comune>
													<comune>Montefano</comune>
													<comune>Montelupone</comune>
													<comune>Morrovalle</comune>
													<comune>Muccia</comune>
													<comune>Penna San Giovanni</comune>
													<comune>Petriolo</comune>
													<comune>Pieve Torina</comune>
													<comune>Pievebovigliana</comune>
													<comune>Pioraco</comune>
													<comune>Poggio San Vicino</comune>
													<comune>Pollenza</comune>
													<comune>Porto Recanati</comune>
													<comune>Potenza Picena</comune>
													<comune>Recanati</comune>
													<comune>Ripe San Ginesio</comune>
													<comune>San Ginesio</comune>
													<comune>San Severino Marche</comune>
													<comune>Sant'Angelo in Pontano</comune>
													<comune>Sarnano</comune>
													<comune>Sefro</comune>
													<comune>Serrapetrona</comune>
													<comune>Serravalle di Chienti</comune>
													<comune>Tolentino</comune>
													<comune>Treia</comune>
													<comune>Urbisaglia</comune>
													<comune>Ussita</comune>
													<comune>Visso</comune>
												</comuni>
											</prov>
											<prov>
												<code>MN</code>
												<name>MANTOVA</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Acquanegra sul Chiese</comune>
													<comune>Asola</comune>
													<comune>Bagnolo San Vito</comune>
													<comune>Bigarello</comune>
													<comune>Borgoforte</comune>
													<comune>Borgofranco sul Po</comune>
													<comune>Bozzolo</comune>
													<comune>Canneto sull'Oglio</comune>
													<comune>Carbonara di Po</comune>
													<comune>Casalmoro</comune>
													<comune>Casaloldo</comune>
													<comune>Casalromano</comune>
													<comune>Castel Goffredo</comune>
													<comune>Castel d'Ario</comune>
													<comune>Castelbelforte</comune>
													<comune>Castellucchio</comune>
													<comune>Castiglione delle Stiviere</comune>
													<comune>Cavriana</comune>
													<comune>Ceresara</comune>
													<comune>Commessaggio</comune>
													<comune>Curtatone</comune>
													<comune>Dosolo</comune>
													<comune>Felonica</comune>
													<comune>Gazoldo degli Ippoliti</comune>
													<comune>Gazzuolo</comune>
													<comune>Goito</comune>
													<comune>Gonzaga</comune>
													<comune>Guidizzolo</comune>
													<comune>Magnacavallo</comune>
													<comune>Mantova</comune>
													<comune>Marcaria</comune>
													<comune>Mariana Mantovana</comune>
													<comune>Marmirolo</comune>
													<comune>Medole</comune>
													<comune>Moglia</comune>
													<comune>Monzambano</comune>
													<comune>Motteggiana</comune>
													<comune>Ostiglia</comune>
													<comune>Pegognaga</comune>
													<comune>Pieve di Coriano</comune>
													<comune>Piubega</comune>
													<comune>Poggio Rusco</comune>
													<comune>Pomponesco</comune>
													<comune>Ponti sul Mincio</comune>
													<comune>Porto Mantovano</comune>
													<comune>Quingentole</comune>
													<comune>Quistello</comune>
													<comune>Redondesco</comune>
													<comune>Revere</comune>
													<comune>Rivarolo Mantovano</comune>
													<comune>Rodigo</comune>
													<comune>Roncoferraro</comune>
													<comune>Roverbella</comune>
													<comune>Sabbioneta</comune>
													<comune>San Benedetto Po</comune>
													<comune>San Giacomo delle Segnate</comune>
													<comune>San Giorgio di Mantova</comune>
													<comune>San Giovanni del Dosso</comune>
													<comune>San Martino dall'Argine</comune>
													<comune>Schivenoglia</comune>
													<comune>Sermide</comune>
													<comune>Serravalle a Po</comune>
													<comune>Solferino</comune>
													<comune>Sustinente</comune>
													<comune>Suzzara</comune>
													<comune>Viadana</comune>
													<comune>Villa Poma</comune>
													<comune>Villimpenta</comune>
													<comune>Virgilio</comune>
													<comune>Volta Mantovana</comune>
												</comuni>
											</prov>
											<prov>
												<code>MS</code>
												<name>MASSA CARRARA</name>
												<region>TOSCANA</region>
												<comuni>
													<comune>Aulla</comune>
													<comune>Bagnone</comune>
													<comune>Carrara</comune>
													<comune>Casola in Lunigiana</comune>
													<comune>Comano</comune>
													<comune>Filattiera</comune>
													<comune>Fivizzano</comune>
													<comune>Fosdinovo</comune>
													<comune>Licciana Nardi</comune>
													<comune>Massa</comune>
													<comune>Montignoso</comune>
													<comune>Mulazzo</comune>
													<comune>Podenzana</comune>
													<comune>Pontremoli</comune>
													<comune>Tresana</comune>
													<comune>Villafranca in Lunigiana</comune>
													<comune>Zeri</comune>
												</comuni>
											</prov>
											<prov>
												<code>MT</code>
												<name>MATERA</name>
												<region>BASILICATA</region>
												<comuni>
													<comune>Accettura</comune>
													<comune>Aliano</comune>
													<comune>Bernalda</comune>
													<comune>Calciano</comune>
													<comune>Cirigliano</comune>
													<comune>Colobraro</comune>
													<comune>Craco</comune>
													<comune>Ferrandina</comune>
													<comune>Garaguso</comune>
													<comune>Gorgoglione</comune>
													<comune>Grassano</comune>
													<comune>Grottole</comune>
													<comune>Irsina</comune>
													<comune>Matera</comune>
													<comune>Miglionico</comune>
													<comune>Montalbano Jonico</comune>
													<comune>Montescaglioso</comune>
													<comune>Nova Siri</comune>
													<comune>Oliveto Lucano</comune>
													<comune>Pisticci</comune>
													<comune>Policoro</comune>
													<comune>Pomarico</comune>
													<comune>Rotondella</comune>
													<comune>Salandra</comune>
													<comune>San Giorgio Lucano</comune>
													<comune>San Mauro Forte</comune>
													<comune>Scanzano Jonico</comune>
													<comune>Stigliano</comune>
													<comune>Tricarico</comune>
													<comune>Tursi</comune>
													<comune>Valsinni</comune>
												</comuni>
											</prov>
											<prov>
												<code>ME</code>
												<name>MESSINA</name>
												<region>SICILIA</region>
												<comuni>
													<comune>Acquedolci</comune>
													<comune>Alcara Li Fusi</comune>
													<comune>Alè</comune>
													<comune>Alè Terme</comune>
													<comune>Antillo</comune>
													<comune>Barcellona Pozzo di Gotto</comune>
													<comune>Basicà</comune>
													<comune>Brolo</comune>
													<comune>Capizzi</comune>
													<comune>Capo d'Orlando</comune>
													<comune>Capri Leone</comune>
													<comune>Caronia</comune>
													<comune>Casalvecchio Siculo</comune>
													<comune>Castel di Lucio</comune>
													<comune>Castell'Umberto</comune>
													<comune>Castelmola</comune>
													<comune>Castroreale</comune>
													<comune>Cesarà</comune>
													<comune>Condrà</comune>
													<comune>Falcone</comune>
													<comune>Ficarra</comune>
													<comune>Fiumedinisi</comune>
													<comune>Floresta</comune>
													<comune>Fondachelli-Fantina</comune>
													<comune>Forza d'Agrà</comune>
													<comune>Francavilla di Sicilia</comune>
													<comune>Frazzanà</comune>
													<comune>Furci Siculo</comune>
													<comune>Furnari</comune>
													<comune>Gaggi</comune>
													<comune>Galati Mamertino</comune>
													<comune>Gallodoro</comune>
													<comune>Giardini-Naxos</comune>
													<comune>Gioiosa Marea</comune>
													<comune>Graniti</comune>
													<comune>Gualtieri Sicaminà</comune>
													<comune>Itala</comune>
													<comune>Leni</comune>
													<comune>Letojanni</comune>
													<comune>Librizzi</comune>
													<comune>Limina</comune>
													<comune>Lipari</comune>
													<comune>Longi</comune>
													<comune>Malfa</comune>
													<comune>Malvagna</comune>
													<comune>Mandanici</comune>
													<comune>Mazzarrà Sant'Andrea</comune>
													<comune>Merà</comune>
													<comune>Messina</comune>
													<comune>Milazzo</comune>
													<comune>Militello Rosmarino</comune>
													<comune>Mirto</comune>
													<comune>Mistretta</comune>
													<comune>Moio Alcantara</comune>
													<comune>Monforte San Giorgio</comune>
													<comune>Mongiuffi Melia</comune>
													<comune>Montagnareale</comune>
													<comune>Montalbano Elicona</comune>
													<comune>Motta Camastra</comune>
													<comune>Motta d'Affermo</comune>
													<comune>Naso</comune>
													<comune>Nizza di Sicilia</comune>
													<comune>Novara di Sicilia</comune>
													<comune>Oliveri</comune>
													<comune>Pace del Mela</comune>
													<comune>Pagliara</comune>
													<comune>Patti</comune>
													<comune>Pettineo</comune>
													<comune>Piraino</comune>
													<comune>Raccuja</comune>
													<comune>Reitano</comune>
													<comune>Roccafiorita</comune>
													<comune>Roccalumera</comune>
													<comune>Roccavaldina</comune>
													<comune>Roccella Valdemone</comune>
													<comune>Rodà Milici</comune>
													<comune>Rometta</comune>
													<comune>San Filippo del Mela</comune>
													<comune>San Fratello</comune>
													<comune>San Marco D'Alunzio</comune>
													<comune>San Pier Niceto</comune>
													<comune>San Piero Patti</comune>
													<comune>San Salvatore di Fitalia</comune>
													<comune>San Teodoro</comune>
													<comune>Sant'Agata di Militello</comune>
													<comune>Sant'Alessio Siculo</comune>
													<comune>Sant'Angelo di Brolo</comune>
													<comune>Santa Domenica Vittoria</comune>
													<comune>Santa Lucia del Mela</comune>
													<comune>Santa Marina Salina</comune>
													<comune>Santa Teresa di Riva</comune>
													<comune>Santo Stefano di Camastra</comune>
													<comune>Saponara</comune>
													<comune>Savoca</comune>
													<comune>Scaletta Zanclea</comune>
													<comune>Sinagra</comune>
													<comune>Spadafora</comune>
													<comune>Taormina</comune>
													<comune>Terme Vigliatore</comune>
													<comune>Torregrotta</comune>
													<comune>Torrenova</comune>
													<comune>Tortorici</comune>
													<comune>Tripi</comune>
													<comune>Tusa</comune>
													<comune>Ucria</comune>
													<comune>Valdina</comune>
													<comune>Venetico</comune>
													<comune>Villafranca Tirrena</comune>
												</comuni>
											</prov>
											<prov>
												<code>MI</code>
												<name>MILANO</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Abbiategrasso</comune>
													<comune>Agrate Brianza</comune>
													<comune>Aicurzio</comune>
													<comune>Albairate</comune>
													<comune>Albiate</comune>
													<comune>Arconate</comune>
													<comune>Arcore</comune>
													<comune>Arese</comune>
													<comune>Arluno</comune>
													<comune>Assago</comune>
													<comune>Baranzate</comune>
													<comune>Bareggio</comune>
													<comune>Barlassina</comune>
													<comune>Basiano</comune>
													<comune>Basiglio</comune>
													<comune>Bellinzago Lombardo</comune>
													<comune>Bellusco</comune>
													<comune>Bernareggio</comune>
													<comune>Bernate Ticino</comune>
													<comune>Besana in Brianza</comune>
													<comune>Besate</comune>
													<comune>Biassono</comune>
													<comune>Binasco</comune>
													<comune>Boffalora Sopra Ticino</comune>
													<comune>Bollate</comune>
													<comune>Bovisio Masciago</comune>
													<comune>Bresso</comune>
													<comune>Briosco</comune>
													<comune>Brugherio</comune>
													<comune>Bubbiano</comune>
													<comune>Buccinasco</comune>
													<comune>Burago di Molgora</comune>
													<comune>Buscate</comune>
													<comune>Busnago</comune>
													<comune>Bussero</comune>
													<comune>Busto Garolfo</comune>
													<comune>Calvignasco</comune>
													<comune>Cambiago</comune>
													<comune>Camparada</comune>
													<comune>Canegrate</comune>
													<comune>Caponago</comune>
													<comune>Carate Brianza</comune>
													<comune>Carnate</comune>
													<comune>Carpiano</comune>
													<comune>Carugate</comune>
													<comune>Casarile</comune>
													<comune>Casorezzo</comune>
													<comune>Cassano d'Adda</comune>
													<comune>Cassina de' Pecchi</comune>
													<comune>Cassinetta di Lugagnano</comune>
													<comune>Castano Primo</comune>
													<comune>Cavenago di Brianza</comune>
													<comune>Ceriano Laghetto</comune>
													<comune>Cernusco sul Naviglio</comune>
													<comune>Cerro Maggiore</comune>
													<comune>Cerro al Lambro</comune>
													<comune>Cesano Boscone</comune>
													<comune>Cesano Maderno</comune>
													<comune>Cesate</comune>
													<comune>Cinisello Balsamo</comune>
													<comune>Cisliano</comune>
													<comune>Cogliate</comune>
													<comune>Cologno Monzese</comune>
													<comune>Colturano</comune>
													<comune>Concorezzo</comune>
													<comune>Corbetta</comune>
													<comune>Cormano</comune>
													<comune>Cornaredo</comune>
													<comune>Cornate d'Adda</comune>
													<comune>Correzzana</comune>
													<comune>Corsico</comune>
													<comune>Cuggiono</comune>
													<comune>Cusago</comune>
													<comune>Cusano Milanino</comune>
													<comune>Dairago</comune>
													<comune>Desio</comune>
													<comune>Dresano</comune>
													<comune>Gaggiano</comune>
													<comune>Garbagnate Milanese</comune>
													<comune>Gessate</comune>
													<comune>Giussano</comune>
													<comune>Gorgonzola</comune>
													<comune>Grezzago</comune>
													<comune>Gudo Visconti</comune>
													<comune>Inveruno</comune>
													<comune>Inzago</comune>
													<comune>Lacchiarella</comune>
													<comune>Lainate</comune>
													<comune>Lazzate</comune>
													<comune>Legnano</comune>
													<comune>Lentate sul Seveso</comune>
													<comune>Lesmo</comune>
													<comune>Limbiate</comune>
													<comune>Liscate</comune>
													<comune>Lissone</comune>
													<comune>Locate di Triulzi</comune>
													<comune>Macherio</comune>
													<comune>Magenta</comune>
													<comune>Magnago</comune>
													<comune>Marcallo con Casone</comune>
													<comune>Masate</comune>
													<comune>Meda</comune>
													<comune>Mediglia</comune>
													<comune>Melegnano</comune>
													<comune>Melzo</comune>
													<comune>Mesero</comune>
													<comune>Mezzago</comune>
													<comune>Milano</comune>
													<comune>Misinto</comune>
													<comune>Monza</comune>
													<comune>Morimondo</comune>
													<comune>Motta Visconti</comune>
													<comune>Muggià</comune>
													<comune>Nerviano</comune>
													<comune>Nosate</comune>
													<comune>Nova Milanese</comune>
													<comune>Novate Milanese</comune>
													<comune>Noviglio</comune>
													<comune>Opera</comune>
													<comune>Ornago</comune>
													<comune>Ossona</comune>
													<comune>Ozzero</comune>
													<comune>Paderno Dugnano</comune>
													<comune>Pantigliate</comune>
													<comune>Parabiago</comune>
													<comune>Paullo</comune>
													<comune>Pero</comune>
													<comune>Peschiera Borromeo</comune>
													<comune>Pessano con Bornago</comune>
													<comune>Pieve Emanuele</comune>
													<comune>Pioltello</comune>
													<comune>Pogliano Milanese</comune>
													<comune>Pozzo d'Adda</comune>
													<comune>Pozzuolo Martesana</comune>
													<comune>Pregnana Milanese</comune>
													<comune>Renate</comune>
													<comune>Rescaldina</comune>
													<comune>Rho</comune>
													<comune>Robecchetto con Induno</comune>
													<comune>Robecco sul Naviglio</comune>
													<comune>Rodano</comune>
													<comune>Roncello</comune>
													<comune>Ronco Briantino</comune>
													<comune>Rosate</comune>
													<comune>Rozzano</comune>
													<comune>San Colombano al Lambro</comune>
													<comune>San Donato Milanese</comune>
													<comune>San Giorgio su Legnano</comune>
													<comune>San Giuliano Milanese</comune>
													<comune>San Vittore Olona</comune>
													<comune>San Zenone al Lambro</comune>
													<comune>Santo Stefano Ticino</comune>
													<comune>Sedriano</comune>
													<comune>Segrate</comune>
													<comune>Senago</comune>
													<comune>Seregno</comune>
													<comune>Sesto San Giovanni</comune>
													<comune>Settala</comune>
													<comune>Settimo Milanese</comune>
													<comune>Seveso</comune>
													<comune>Solaro</comune>
													<comune>Sovico</comune>
													<comune>Sulbiate</comune>
													<comune>Trezzano Rosa</comune>
													<comune>Trezzano sul Naviglio</comune>
													<comune>Trezzo sull'Adda</comune>
													<comune>Tribiano</comune>
													<comune>Triuggio</comune>
													<comune>Truccazzano</comune>
													<comune>Turbigo</comune>
													<comune>Usmate Velate</comune>
													<comune>Vanzaghello</comune>
													<comune>Vanzago</comune>
													<comune>Vaprio d'Adda</comune>
													<comune>Varedo</comune>
													<comune>Vedano al Lambro</comune>
													<comune>Veduggio con Colzano</comune>
													<comune>Verano Brianza</comune>
													<comune>Vermezzo</comune>
													<comune>Vernate</comune>
													<comune>Vignate</comune>
													<comune>Villa Cortese</comune>
													<comune>Villasanta</comune>
													<comune>Vimercate</comune>
													<comune>Vimodrone</comune>
													<comune>Vittuone</comune>
													<comune>Vizzolo Predabissi</comune>
													<comune>Zelo Surrigone</comune>
													<comune>Zibido San Giacomo</comune>
												</comuni>
											</prov>
											<prov>
												<code>MO</code>
												<name>MODENA</name>
												<region>EMILIA ROMAGNA</region>
												<comuni>
													<comune>Bastiglia</comune>
													<comune>Bomporto</comune>
													<comune>Campogalliano</comune>
													<comune>Camposanto</comune>
													<comune>Carpi</comune>
													<comune>Castelfranco Emilia</comune>
													<comune>Castelnuovo Rangone</comune>
													<comune>Castelvetro di Modena</comune>
													<comune>Cavezzo</comune>
													<comune>Concordia sulla Secchia</comune>
													<comune>Fanano</comune>
													<comune>Finale Emilia</comune>
													<comune>Fiorano Modenese</comune>
													<comune>Fiumalbo</comune>
													<comune>Formigine</comune>
													<comune>Frassinoro</comune>
													<comune>Guiglia</comune>
													<comune>Lama Mocogno</comune>
													<comune>Maranello</comune>
													<comune>Marano sul Panaro</comune>
													<comune>Medolla</comune>
													<comune>Mirandola</comune>
													<comune>Modena</comune>
													<comune>Montecreto</comune>
													<comune>Montefiorino</comune>
													<comune>Montese</comune>
													<comune>Nonantola</comune>
													<comune>Novi di Modena</comune>
													<comune>Palagano</comune>
													<comune>Pavullo nel Frignano</comune>
													<comune>Pievepelago</comune>
													<comune>Polinago</comune>
													<comune>Prignano sulla Secchia</comune>
													<comune>Ravarino</comune>
													<comune>Riolunato</comune>
													<comune>San Cesario sul Panaro</comune>
													<comune>San Felice sul Panaro</comune>
													<comune>San Possidonio</comune>
													<comune>San Prospero</comune>
													<comune>Sassuolo</comune>
													<comune>Savignano sul Panaro</comune>
													<comune>Serramazzoni</comune>
													<comune>Sestola</comune>
													<comune>Soliera</comune>
													<comune>Spilamberto</comune>
													<comune>Vignola</comune>
													<comune>Zocca</comune>
												</comuni>
											</prov>
											<prov>
												<code>NA</code>
												<name>NAPOLI</name>
												<region>CALABRIA</region>
												<comuni>
													<comune>Acerra</comune>
													<comune>Afragola</comune>
													<comune>Agerola</comune>
													<comune>Anacapri</comune>
													<comune>Arzano</comune>
													<comune>Bacoli</comune>
													<comune>Barano d'Ischia</comune>
													<comune>Boscoreale</comune>
													<comune>Boscotrecase</comune>
													<comune>Brusciano</comune>
													<comune>Caivano</comune>
													<comune>Calvizzano</comune>
													<comune>Camposano</comune>
													<comune>Capri</comune>
													<comune>Carbonara di Nola</comune>
													<comune>Cardito</comune>
													<comune>Casalnuovo di Napoli</comune>
													<comune>Casamarciano</comune>
													<comune>Casamicciola Terme</comune>
													<comune>Casandrino</comune>
													<comune>Casavatore</comune>
													<comune>Casola di Napoli</comune>
													<comune>Casoria</comune>
													<comune>Castellammare di Stabia</comune>
													<comune>Castello di Cisterna</comune>
													<comune>Cercola</comune>
													<comune>Cicciano</comune>
													<comune>Cimitile</comune>
													<comune>Comiziano</comune>
													<comune>Crispano</comune>
													<comune>Ercolano</comune>
													<comune>Forio</comune>
													<comune>Frattamaggiore</comune>
													<comune>Frattaminore</comune>
													<comune>Giugliano in Campania</comune>
													<comune>Gragnano</comune>
													<comune>Grumo Nevano</comune>
													<comune>Ischia</comune>
													<comune>Lacco Ameno</comune>
													<comune>Lettere</comune>
													<comune>Liveri</comune>
													<comune>Marano di Napoli</comune>
													<comune>Mariglianella</comune>
													<comune>Marigliano</comune>
													<comune>Massa Lubrense</comune>
													<comune>Massa di Somma</comune>
													<comune>Melito di Napoli</comune>
													<comune>Meta</comune>
													<comune>Monte di Procida</comune>
													<comune>Mugnano di Napoli</comune>
													<comune>Napoli</comune>
													<comune>Nola</comune>
													<comune>Ottaviano</comune>
													<comune>Palma Campania</comune>
													<comune>Piano di Sorrento</comune>
													<comune>Pimonte</comune>
													<comune>Poggiomarino</comune>
													<comune>Pollena Trocchia</comune>
													<comune>Pomigliano d'Arco</comune>
													<comune>Pompei</comune>
													<comune>Portici</comune>
													<comune>Pozzuoli</comune>
													<comune>Procida</comune>
													<comune>Qualiano</comune>
													<comune>Quarto</comune>
													<comune>Roccarainola</comune>
													<comune>San Gennaro Vesuviano</comune>
													<comune>San Giorgio a Cremano</comune>
													<comune>San Giuseppe Vesuviano</comune>
													<comune>San Paolo Bel Sito</comune>
													<comune>San Sebastiano al Vesuvio</comune>
													<comune>San Vitaliano</comune>
													<comune>Sant'Agnello</comune>
													<comune>Sant'Anastasia</comune>
													<comune>Sant'Antimo</comune>
													<comune>Sant'Antonio Abate</comune>
													<comune>Santa Maria la Carità</comune>
													<comune>Saviano</comune>
													<comune>Scisciano</comune>
													<comune>Serrara Fontana</comune>
													<comune>Somma Vesuviana</comune>
													<comune>Sorrento</comune>
													<comune>Striano</comune>
													<comune>Terzigno</comune>
													<comune>Torre Annunziata</comune>
													<comune>Torre del Greco</comune>
													<comune>Trecase</comune>
													<comune>Tufino</comune>
													<comune>Vico Equense</comune>
													<comune>Villaricca</comune>
													<comune>Visciano</comune>
													<comune>Volla</comune>
												</comuni>
											</prov>
											<prov>
												<code>NO</code>
												<name>NOVARA</name>
												<region>PIEMONTE</region>
												<comuni>
													<comune>Agrate Conturbia</comune>
													<comune>Ameno</comune>
													<comune>Armeno</comune>
													<comune>Arona</comune>
													<comune>Barengo</comune>
													<comune>Bellinzago Novarese</comune>
													<comune>Biandrate</comune>
													<comune>Boca</comune>
													<comune>Bogogno</comune>
													<comune>Bolzano Novarese</comune>
													<comune>Borgo Ticino</comune>
													<comune>Borgolavezzaro</comune>
													<comune>Borgomanero</comune>
													<comune>Briga Novarese</comune>
													<comune>Briona</comune>
													<comune>Caltignaga</comune>
													<comune>Cameri</comune>
													<comune>Carpignano Sesia</comune>
													<comune>Casalbeltrame</comune>
													<comune>Casaleggio Novara</comune>
													<comune>Casalino</comune>
													<comune>Casalvolone</comune>
													<comune>Castellazzo Novarese</comune>
													<comune>Castelletto Sopra Ticino</comune>
													<comune>Cavaglietto</comune>
													<comune>Cavaglio d'Agogna</comune>
													<comune>Cavallirio</comune>
													<comune>Cerano</comune>
													<comune>Colazza</comune>
													<comune>Comignago</comune>
													<comune>Cressa</comune>
													<comune>Cureggio</comune>
													<comune>Divignano</comune>
													<comune>Dormelletto</comune>
													<comune>Fara Novarese</comune>
													<comune>Fontaneto d'Agogna</comune>
													<comune>Galliate</comune>
													<comune>Garbagna Novarese</comune>
													<comune>Gargallo</comune>
													<comune>Gattico</comune>
													<comune>Ghemme</comune>
													<comune>Gozzano</comune>
													<comune>Granozzo con Monticello</comune>
													<comune>Grignasco</comune>
													<comune>Invorio</comune>
													<comune>Landiona</comune>
													<comune>Lesa</comune>
													<comune>Maggiora</comune>
													<comune>Mandello Vitta</comune>
													<comune>Marano Ticino</comune>
													<comune>Massino Visconti</comune>
													<comune>Meina</comune>
													<comune>Mezzomerico</comune>
													<comune>Miasino</comune>
													<comune>Momo</comune>
													<comune>Nebbiuno</comune>
													<comune>Nibbiola</comune>
													<comune>Novara</comune>
													<comune>Oleggio</comune>
													<comune>Oleggio Castello</comune>
													<comune>Orta San Giulio</comune>
													<comune>Paruzzaro</comune>
													<comune>Pella</comune>
													<comune>Pettenasco</comune>
													<comune>Pisano</comune>
													<comune>Pogno</comune>
													<comune>Pombia</comune>
													<comune>Prato Sesia</comune>
													<comune>Recetto</comune>
													<comune>Romagnano Sesia</comune>
													<comune>Romentino</comune>
													<comune>San Maurizio d'Opaglio</comune>
													<comune>San Nazzaro Sesia</comune>
													<comune>San Pietro Mosezzo</comune>
													<comune>Sillavengo</comune>
													<comune>Sizzano</comune>
													<comune>Soriso</comune>
													<comune>Sozzago</comune>
													<comune>Suno</comune>
													<comune>Terdobbiate</comune>
													<comune>Tornaco</comune>
													<comune>Trecate</comune>
													<comune>Vaprio d'Agogna</comune>
													<comune>Varallo Pombia</comune>
													<comune>Veruno</comune>
													<comune>Vespolate</comune>
													<comune>Vicolungo</comune>
													<comune>Vinzaglio</comune>
												</comuni>
											</prov>
											<prov>
												<code>NU</code>
												<name>NUORO</name>
												<region>SARDEGNA</region>
												<comuni>
													<comune>Aritzo</comune>
													<comune>Atzara</comune>
													<comune>Austis</comune>
													<comune>Belvi</comune>
													<comune>Birori</comune>
													<comune>Bitti</comune>
													<comune>Bolotana</comune>
													<comune>Borore</comune>
													<comune>Bortigali</comune>
													<comune>Desulo</comune>
													<comune>Dorgali</comune>
													<comune>Dualchi</comune>
													<comune>Fonni</comune>
													<comune>Gadoni</comune>
													<comune>Galtelli</comune>
													<comune>Gavoi</comune>
													<comune>Irgoli</comune>
													<comune>Lei</comune>
													<comune>Loculi</comune>
													<comune>Lodine</comune>
													<comune>Lodà</comune>
													<comune>Lula</comune>
													<comune>Macomer</comune>
													<comune>Mamoiada</comune>
													<comune>Meana Sardo</comune>
													<comune>Noragugume</comune>
													<comune>Nuoro</comune>
													<comune>Oliena</comune>
													<comune>Ollolai</comune>
													<comune>Olzai</comune>
													<comune>Onani</comune>
													<comune>Onifai</comune>
													<comune>Oniferi</comune>
													<comune>Orani</comune>
													<comune>Orgosolo</comune>
													<comune>Orosei</comune>
													<comune>Orotelli</comune>
													<comune>Ortueri</comune>
													<comune>Orune</comune>
													<comune>Osidda</comune>
													<comune>Ottana</comune>
													<comune>Ovodda</comune>
													<comune>Posada</comune>
													<comune>Sarule</comune>
													<comune>Silanus</comune>
													<comune>Sindia</comune>
													<comune>Siniscola</comune>
													<comune>Sorgono</comune>
													<comune>Teti</comune>
													<comune>Tiana</comune>
													<comune>Tonara</comune>
													<comune>Torpà</comune>
												</comuni>
											</prov>
											<prov>
												<code>OT</code>
												<name>OLBIA-TEMPIO</name>
												<region>SARDEGNA</region>
												<comuni>
													<comune>Aggius</comune>
													<comune>Aglientu</comune>
													<comune>Alè dei Sardi</comune>
													<comune>Arzachena</comune>
													<comune>Badesi</comune>
													<comune>Berchidda</comune>
													<comune>Bortigiadas</comune>
													<comune>Buddusà</comune>
													<comune>Budoni</comune>
													<comune>Calangianus</comune>
													<comune>Golfo Aranci</comune>
													<comune>La Maddalena</comune>
													<comune>Loiri Porto San Paolo</comune>
													<comune>Luogosanto</comune>
													<comune>Luras</comune>
													<comune>Monti</comune>
													<comune>Olbia</comune>
													<comune>Oschiri</comune>
													<comune>Padru</comune>
													<comune>Palau</comune>
													<comune>San Teodoro</comune>
													<comune>Sant'Antonio di Gallura</comune>
													<comune>Santa Teresa Gallura</comune>
													<comune>Telti</comune>
													<comune>Tempio Pausania</comune>
													<comune>Trinità d'Agultu e Vignola</comune>
												</comuni>
											</prov>
											<prov>
												<code>OR</code>
												<name>ORISTANO</name>
												<region>SARDEGNA</region>
												<comuni>
													<comune>Abbasanta</comune>
													<comune>Aidomaggiore</comune>
													<comune>Albagiara</comune>
													<comune>Ales</comune>
													<comune>Allai</comune>
													<comune>Arborea</comune>
													<comune>Ardauli</comune>
													<comune>Assolo</comune>
													<comune>Asuni</comune>
													<comune>Baradili</comune>
													<comune>Baratili San Pietro</comune>
													<comune>Baressa</comune>
													<comune>Bauladu</comune>
													<comune>Bidonà</comune>
													<comune>Bonarcado</comune>
													<comune>Boroneddu</comune>
													<comune>Bosa</comune>
													<comune>Busachi</comune>
													<comune>Cabras</comune>
													<comune>Cuglieri</comune>
													<comune>Curcuris</comune>
													<comune>Flussio</comune>
													<comune>Fordongianus</comune>
													<comune>Genoni</comune>
													<comune>Ghilarza</comune>
													<comune>Gonnoscodina</comune>
													<comune>Gonnosnà</comune>
													<comune>Gonnostramatza</comune>
													<comune>Laconi</comune>
													<comune>Magomadas</comune>
													<comune>Marrubiu</comune>
													<comune>Masullas</comune>
													<comune>Milis</comune>
													<comune>Modolo</comune>
													<comune>Mogorella</comune>
													<comune>Mogoro</comune>
													<comune>Montresta</comune>
													<comune>Morgongiori</comune>
													<comune>Narbolia</comune>
													<comune>Neoneli</comune>
													<comune>Norbello</comune>
													<comune>Nughedu Santa Vittoria</comune>
													<comune>Nurachi</comune>
													<comune>Nureci</comune>
													<comune>Ollastra</comune>
													<comune>Oristano</comune>
													<comune>Palmas Arborea</comune>
													<comune>Pau</comune>
													<comune>Paulilatino</comune>
													<comune>Pompu</comune>
													<comune>Riola Sardo</comune>
													<comune>Ruinas</comune>
													<comune>Sagama</comune>
													<comune>Samugheo</comune>
													<comune>San Nicolà d'Arcidano</comune>
													<comune>San Vero Milis</comune>
													<comune>Santa Giusta</comune>
													<comune>Santu Lussurgiu</comune>
													<comune>Scano di Montiferro</comune>
													<comune>Sedilo</comune>
													<comune>Seneghe</comune>
													<comune>Senis</comune>
													<comune>Sennariolo</comune>
													<comune>Siamaggiore</comune>
													<comune>Siamanna</comune>
													<comune>Siapiccia</comune>
													<comune>Simala</comune>
													<comune>Simaxis</comune>
													<comune>Sini</comune>
													<comune>Siris</comune>
													<comune>Soddà</comune>
													<comune>Solarussa</comune>
													<comune>Sorradile</comune>
													<comune>Suni</comune>
													<comune>Tadasuni</comune>
													<comune>Terralba</comune>
													<comune>Tinnura</comune>
													<comune>Tramatza</comune>
													<comune>Tresnuraghes</comune>
													<comune>Ulà Tirso</comune>
													<comune>Uras</comune>
													<comune>Usellus</comune>
													<comune>Villa Sant'Antonio</comune>
													<comune>Villa Verde</comune>
													<comune>Villanova Truschedu</comune>
													<comune>Villaurbana</comune>
													<comune>Zeddiani</comune>
													<comune>Zerfaliu</comune>
												</comuni>
											</prov>
											<prov>
												<code>PD</code>
												<name>PADOVA</name>
												<region>VENETO</region>
												<comuni>
													<comune>Agna</comune>
													<comune>Albignasego</comune>
													<comune>Anguillara Veneta</comune>
													<comune>Arquà Petrarca</comune>
													<comune>Arre</comune>
													<comune>Arzergrande</comune>
													<comune>Bagnoli di Sopra</comune>
													<comune>Baone</comune>
													<comune>Barbona</comune>
													<comune>Battaglia Terme</comune>
													<comune>Boara Pisani</comune>
													<comune>Borgoricco</comune>
													<comune>Bovolenta</comune>
													<comune>Brugine</comune>
													<comune>Cadoneghe</comune>
													<comune>Campo San Martino</comune>
													<comune>Campodarsego</comune>
													<comune>Campodoro</comune>
													<comune>Camposampiero</comune>
													<comune>Candiana</comune>
													<comune>Carceri</comune>
													<comune>Carmignano di Brenta</comune>
													<comune>Cartura</comune>
													<comune>Casale di Scodosia</comune>
													<comune>Casalserugo</comune>
													<comune>Castelbaldo</comune>
													<comune>Cervarese Santa Croce</comune>
													<comune>Cinto Euganeo</comune>
													<comune>Cittadella</comune>
													<comune>Codevigo</comune>
													<comune>Conselve</comune>
													<comune>Correzzola</comune>
													<comune>Curtarolo</comune>
													<comune>Due Carrare</comune>
													<comune>Este</comune>
													<comune>Fontaniva</comune>
													<comune>Galliera Veneta</comune>
													<comune>Galzignano Terme</comune>
													<comune>Gazzo</comune>
													<comune>Grantorto</comune>
													<comune>Granze</comune>
													<comune>Legnaro</comune>
													<comune>Limena</comune>
													<comune>Loreggia</comune>
													<comune>Lozzo Atestino</comune>
													<comune>Maserà di Padova</comune>
													<comune>Masi</comune>
													<comune>Massanzago</comune>
													<comune>Megliadino San Fidenzio</comune>
													<comune>Megliadino San Vitale</comune>
													<comune>Merlara</comune>
													<comune>Mestrino</comune>
													<comune>Monselice</comune>
													<comune>Montagnana</comune>
													<comune>Montegrotto Terme</comune>
													<comune>Noventa Padovana</comune>
													<comune>Ospedaletto Euganeo</comune>
													<comune>Padova</comune>
													<comune>Pernumia</comune>
													<comune>Piacenza d'Adige</comune>
													<comune>Piazzola sul Brenta</comune>
													<comune>Piombino Dese</comune>
													<comune>Piove di Sacco</comune>
													<comune>Polverara</comune>
													<comune>Ponso</comune>
													<comune>Ponte San Nicolà</comune>
													<comune>Pontelongo</comune>
													<comune>Pozzonovo</comune>
													<comune>Rovolon</comune>
													<comune>Rubano</comune>
													<comune>Saccolongo</comune>
													<comune>Saletto</comune>
													<comune>San Giorgio delle Pertiche</comune>
													<comune>San Giorgio in Bosco</comune>
													<comune>San Martino di Lupari</comune>
													<comune>San Pietro Viminario</comune>
													<comune>San Pietro in Gu</comune>
													<comune>Sant'Angelo di Piove di Sacco</comune>
													<comune>Sant'Elena</comune>
													<comune>Sant'Urbano</comune>
													<comune>Santa Giustina in Colle</comune>
													<comune>Santa Margherita d'Adige</comune>
													<comune>Saonara</comune>
													<comune>Selvazzano Dentro</comune>
													<comune>Solesino</comune>
													<comune>Stanghella</comune>
													<comune>Teolo</comune>
													<comune>Terrassa Padovana</comune>
													<comune>Tombolo</comune>
													<comune>Torreglia</comune>
													<comune>Trebaseleghe</comune>
													<comune>Tribano</comune>
													<comune>Urbana</comune>
													<comune>Veggiano</comune>
													<comune>Vescovana</comune>
													<comune>Vighizzolo d'Este</comune>
													<comune>Vigodarzere</comune>
													<comune>Vigonza</comune>
													<comune>Villa Estense</comune>
													<comune>Villa del Conte</comune>
													<comune>Villafranca Padovana</comune>
													<comune>Villanova di Camposampiero</comune>
													<comune>Vo</comune>
												</comuni>
											</prov>
											<prov>
												<code>PA</code>
												<name>PALERMO</name>
												<region>SICILIA</region>
												<comuni>
													<comune>Alia</comune>
													<comune>Alimena</comune>
													<comune>Aliminusa</comune>
													<comune>Altavilla Milicia</comune>
													<comune>Altofonte</comune>
													<comune>Bagheria</comune>
													<comune>Balestrate</comune>
													<comune>Baucina</comune>
													<comune>Belmonte Mezzagno</comune>
													<comune>Bisacquino</comune>
													<comune>Blufi</comune>
													<comune>Bolognetta</comune>
													<comune>Bompietro</comune>
													<comune>Borgetto</comune>
													<comune>Caccamo</comune>
													<comune>Caltavuturo</comune>
													<comune>Campofelice di Fitalia</comune>
													<comune>Campofelice di Roccella</comune>
													<comune>Campofiorito</comune>
													<comune>Camporeale</comune>
													<comune>Capaci</comune>
													<comune>Carini</comune>
													<comune>Castelbuono</comune>
													<comune>Casteldaccia</comune>
													<comune>Castellana Sicula</comune>
													<comune>Castronovo di Sicilia</comune>
													<comune>Cefalà</comune>
													<comune>Cefalà Diana</comune>
													<comune>Cerda</comune>
													<comune>Chiusa Sclafani</comune>
													<comune>Ciminna</comune>
													<comune>Cinisi</comune>
													<comune>Collesano</comune>
													<comune>Contessa Entellina</comune>
													<comune>Corleone</comune>
													<comune>Ficarazzi</comune>
													<comune>Gangi</comune>
													<comune>Geraci Siculo</comune>
													<comune>Giardinello</comune>
													<comune>Giuliana</comune>
													<comune>Godrano</comune>
													<comune>Gratteri</comune>
													<comune>Isnello</comune>
													<comune>Isola delle Femmine</comune>
													<comune>Lascari</comune>
													<comune>Lercara Friddi</comune>
													<comune>Marineo</comune>
													<comune>Mezzojuso</comune>
													<comune>Misilmeri</comune>
													<comune>Monreale</comune>
													<comune>Montelepre</comune>
													<comune>Montemaggiore Belsito</comune>
													<comune>Palazzo Adriano</comune>
													<comune>Palermo</comune>
													<comune>Partinico</comune>
													<comune>Petralia Soprana</comune>
													<comune>Petralia Sottana</comune>
													<comune>Piana degli Albanesi</comune>
													<comune>Polizzi Generosa</comune>
													<comune>Pollina</comune>
													<comune>Prizzi</comune>
													<comune>Roccamena</comune>
													<comune>Roccapalumba</comune>
													<comune>San Cipirello</comune>
													<comune>San Giuseppe Jato</comune>
													<comune>San Mauro Castelverde</comune>
													<comune>Santa Cristina Gela</comune>
													<comune>Santa Flavia</comune>
													<comune>Sciara</comune>
													<comune>Scillato</comune>
													<comune>Sclafani Bagni</comune>
													<comune>Termini Imerese</comune>
													<comune>Terrasini</comune>
													<comune>Torretta</comune>
													<comune>Trabia</comune>
													<comune>Trappeto</comune>
													<comune>Ustica</comune>
													<comune>Valledolmo</comune>
													<comune>Ventimiglia di Sicilia</comune>
													<comune>Vicari</comune>
													<comune>Villabate</comune>
													<comune>Villafrati</comune>
												</comuni>
											</prov>
											<prov>
												<code>PR</code>
												<name>PARMA</name>
												<region>EMILIA ROMAGNA</region>
												<comuni>
													<comune>Albareto</comune>
													<comune>Bardi</comune>
													<comune>Bedonia</comune>
													<comune>Berceto</comune>
													<comune>Bore</comune>
													<comune>Borgo Val di Taro</comune>
													<comune>Busseto</comune>
													<comune>Calestano</comune>
													<comune>Collecchio</comune>
													<comune>Colorno</comune>
													<comune>Compiano</comune>
													<comune>Corniglio</comune>
													<comune>Felino</comune>
													<comune>Fidenza</comune>
													<comune>Fontanellato</comune>
													<comune>Fontevivo</comune>
													<comune>Fornovo di Taro</comune>
													<comune>Langhirano</comune>
													<comune>Lesignano de' Bagni</comune>
													<comune>Medesano</comune>
													<comune>Mezzani</comune>
													<comune>Monchio delle Corti</comune>
													<comune>Montechiarugolo</comune>
													<comune>Neviano degli Arduini</comune>
													<comune>Noceto</comune>
													<comune>Palanzano</comune>
													<comune>Parma</comune>
													<comune>Pellegrino Parmense</comune>
													<comune>Polesine Parmense</comune>
													<comune>Roccabianca</comune>
													<comune>Sala Baganza</comune>
													<comune>Salsomaggiore Terme</comune>
													<comune>San Secondo Parmense</comune>
													<comune>Sissa</comune>
													<comune>Solignano</comune>
													<comune>Soragna</comune>
													<comune>Sorbolo</comune>
													<comune>Terenzo</comune>
													<comune>Tizzano Val Parma</comune>
													<comune>Tornolo</comune>
													<comune>Torrile</comune>
													<comune>Traversetolo</comune>
													<comune>Trecasali</comune>
													<comune>Valmozzola</comune>
													<comune>Varano de' Melegari</comune>
													<comune>Varsi</comune>
													<comune>Zibello</comune>
												</comuni>
											</prov>
											<prov>
												<code>PV</code>
												<name>PAVIA</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Alagna</comune>
													<comune>Albaredo Arnaboldi</comune>
													<comune>Albonese</comune>
													<comune>Albuzzano</comune>
													<comune>Arena Po</comune>
													<comune>Badia Pavese</comune>
													<comune>Bagnaria</comune>
													<comune>Barbianello</comune>
													<comune>Bascapà</comune>
													<comune>Bastida Pancarana</comune>
													<comune>Bastida de' Dossi</comune>
													<comune>Battuda</comune>
													<comune>Belgioioso</comune>
													<comune>Bereguardo</comune>
													<comune>Borgarello</comune>
													<comune>Borgo Priolo</comune>
													<comune>Borgo San Siro</comune>
													<comune>Borgoratto Mormorolo</comune>
													<comune>Bornasco</comune>
													<comune>Bosnasco</comune>
													<comune>Brallo di Pregola</comune>
													<comune>Breme</comune>
													<comune>Bressana Bottarone</comune>
													<comune>Broni</comune>
													<comune>Calvignano</comune>
													<comune>Campospinoso</comune>
													<comune>Candia Lomellina</comune>
													<comune>Canevino</comune>
													<comune>Canneto Pavese</comune>
													<comune>Carbonara al Ticino</comune>
													<comune>Casanova Lonati</comune>
													<comune>Casatisma</comune>
													<comune>Casei Gerola</comune>
													<comune>Casorate Primo</comune>
													<comune>Cassolnovo</comune>
													<comune>Castana</comune>
													<comune>Casteggio</comune>
													<comune>Castelletto di Branduzzo</comune>
													<comune>Castello d'Agogna</comune>
													<comune>Castelnovetto</comune>
													<comune>Cava Manara</comune>
													<comune>Cecima</comune>
													<comune>Ceranova</comune>
													<comune>Ceretto Lomellina</comune>
													<comune>Cergnago</comune>
													<comune>Certosa di Pavia</comune>
													<comune>Cervesina</comune>
													<comune>Chignolo Po</comune>
													<comune>Cigognola</comune>
													<comune>Cilavegna</comune>
													<comune>Codevilla</comune>
													<comune>Confienza</comune>
													<comune>Copiano</comune>
													<comune>Corana</comune>
													<comune>Cornale</comune>
													<comune>Corteolona</comune>
													<comune>Corvino San Quirico</comune>
													<comune>Costa de' Nobili</comune>
													<comune>Cozzo</comune>
													<comune>Cura Carpignano</comune>
													<comune>Dorno</comune>
													<comune>Ferrera Erbognone</comune>
													<comune>Filighera</comune>
													<comune>Fortunago</comune>
													<comune>Frascarolo</comune>
													<comune>Galliavola</comune>
													<comune>Gambarana</comune>
													<comune>Gambolà</comune>
													<comune>Garlasco</comune>
													<comune>Genzone</comune>
													<comune>Gerenzago</comune>
													<comune>Giussago</comune>
													<comune>Godiasco</comune>
													<comune>Golferenzo</comune>
													<comune>Gravellona Lomellina</comune>
													<comune>Gropello Cairoli</comune>
													<comune>Inverno e Monteleone</comune>
													<comune>Landriano</comune>
													<comune>Langosco</comune>
													<comune>Lardirago</comune>
													<comune>Linarolo</comune>
													<comune>Lirio</comune>
													<comune>Lomello</comune>
													<comune>Lungavilla</comune>
													<comune>Magherno</comune>
													<comune>Marcignago</comune>
													<comune>Marzano</comune>
													<comune>Mede</comune>
													<comune>Menconico</comune>
													<comune>Mezzana Bigli</comune>
													<comune>Mezzana Rabattone</comune>
													<comune>Mezzanino</comune>
													<comune>Miradolo Terme</comune>
													<comune>Montalto Pavese</comune>
													<comune>Montebello della Battaglia</comune>
													<comune>Montecalvo Versiggia</comune>
													<comune>Montescano</comune>
													<comune>Montesegale</comune>
													<comune>Monticelli Pavese</comune>
													<comune>Montà Beccaria</comune>
													<comune>Mornico Losana</comune>
													<comune>Mortara</comune>
													<comune>Nicorvo</comune>
													<comune>Olevano di Lomellina</comune>
													<comune>Oliva Gessi</comune>
													<comune>Ottobiano</comune>
													<comune>Palestro</comune>
													<comune>Pancarana</comune>
													<comune>Parona</comune>
													<comune>Pavia</comune>
													<comune>Pietra de' Giorgi</comune>
													<comune>Pieve Albignola</comune>
													<comune>Pieve Porto Morone</comune>
													<comune>Pieve del Cairo</comune>
													<comune>Pinarolo Po</comune>
													<comune>Pizzale</comune>
													<comune>Ponte Nizza</comune>
													<comune>Portalbera</comune>
													<comune>Rea</comune>
													<comune>Redavalle</comune>
													<comune>Retorbido</comune>
													<comune>Rivanazzano</comune>
													<comune>Robbio</comune>
													<comune>Robecco Pavese</comune>
													<comune>Rocca Susella</comune>
													<comune>Rocca de' Giorgi</comune>
													<comune>Rognano</comune>
													<comune>Romagnese</comune>
													<comune>Roncaro</comune>
													<comune>Rosasco</comune>
													<comune>Rovescala</comune>
													<comune>Ruino</comune>
													<comune>San Cipriano Po</comune>
													<comune>San Damiano al Colle</comune>
													<comune>San Genesio ed Uniti</comune>
													<comune>San Giorgio di Lomellina</comune>
													<comune>San Martino Siccomario</comune>
													<comune>San Zenone al Po</comune>
													<comune>Sannazzaro de' Burgondi</comune>
													<comune>Sant'Alessio con Vialone</comune>
													<comune>Sant'Angelo Lomellina</comune>
													<comune>Santa Cristina e Bissone</comune>
													<comune>Santa Giuletta</comune>
													<comune>Santa Margherita di Staffora</comune>
													<comune>Santa Maria della Versa</comune>
													<comune>Sartirana Lomellina</comune>
													<comune>Scaldasole</comune>
													<comune>Semiana</comune>
													<comune>Silvano Pietra</comune>
													<comune>Siziano</comune>
													<comune>Sommo</comune>
													<comune>Spessa</comune>
													<comune>Stradella</comune>
													<comune>Suardi</comune>
													<comune>Torrazza Coste</comune>
													<comune>Torre Beretti e Castellaro</comune>
													<comune>Torre d'Arese</comune>
													<comune>Torre d'Isola</comune>
													<comune>Torre de' Negri</comune>
													<comune>Torrevecchia Pia</comune>
													<comune>Torricella Verzate</comune>
													<comune>Travacà Siccomario</comune>
													<comune>Trivolzio</comune>
													<comune>Tromello</comune>
													<comune>Trovo</comune>
													<comune>Val di Nizza</comune>
													<comune>Valeggio</comune>
													<comune>Valle Lomellina</comune>
													<comune>Valle Salimbene</comune>
													<comune>Valverde</comune>
													<comune>Varzi</comune>
													<comune>Velezzo Lomellina</comune>
													<comune>Vellezzo Bellini</comune>
													<comune>Verretto</comune>
													<comune>Verrua Po</comune>
													<comune>Vidigulfo</comune>
													<comune>Vigevano</comune>
													<comune>Villa Biscossi</comune>
													<comune>Villanova d'Ardenghi</comune>
													<comune>Villanterio</comune>
													<comune>Vistarino</comune>
													<comune>Voghera</comune>
													<comune>Volpara</comune>
													<comune>Zavattarello</comune>
													<comune>Zeccone</comune>
													<comune>Zeme</comune>
													<comune>Zenevredo</comune>
													<comune>Zerbo</comune>
													<comune>Zerbolà</comune>
													<comune>Zinasco</comune>
												</comuni>
											</prov>
											<prov>
												<code>PG</code>
												<name>PERUGIA</name>
												<region>UMBRIA</region>
												<comuni>
													<comune>Assisi</comune>
													<comune>Bastia Umbra</comune>
													<comune>Bettona</comune>
													<comune>Bevagna</comune>
													<comune>Campello sul Clitunno</comune>
													<comune>Cannara</comune>
													<comune>Cascia</comune>
													<comune>Castel Ritaldi</comune>
													<comune>Castiglione del Lago</comune>
													<comune>Cerreto di Spoleto</comune>
													<comune>Citerna</comune>
													<comune>Città della Pieve</comune>
													<comune>Città di Castello</comune>
													<comune>Collazzone</comune>
													<comune>Corciano</comune>
													<comune>Costacciaro</comune>
													<comune>Deruta</comune>
													<comune>Foligno</comune>
													<comune>Fossato di Vico</comune>
													<comune>Fratta Todina</comune>
													<comune>Giano dell'Umbria</comune>
													<comune>Gualdo Cattaneo</comune>
													<comune>Gualdo Tadino</comune>
													<comune>Gubbio</comune>
													<comune>Lisciano Niccone</comune>
													<comune>Magione</comune>
													<comune>Marsciano</comune>
													<comune>Massa Martana</comune>
													<comune>Monte Castello di Vibio</comune>
													<comune>Monte Santa Maria Tiberina</comune>
													<comune>Montefalco</comune>
													<comune>Monteleone di Spoleto</comune>
													<comune>Montone</comune>
													<comune>Nocera Umbra</comune>
													<comune>Norcia</comune>
													<comune>Paciano</comune>
													<comune>Panicale</comune>
													<comune>Passignano sul Trasimeno</comune>
													<comune>Perugia</comune>
													<comune>Piegaro</comune>
													<comune>Pietralunga</comune>
													<comune>Poggiodomo</comune>
													<comune>Preci</comune>
													<comune>San Giustino</comune>
													<comune>Sant'Anatolia di Narco</comune>
													<comune>Scheggia e Pascelupo</comune>
													<comune>Scheggino</comune>
													<comune>Sellano</comune>
													<comune>Sigillo</comune>
													<comune>Spello</comune>
													<comune>Spoleto</comune>
													<comune>Todi</comune>
													<comune>Torgiano</comune>
													<comune>Trevi</comune>
													<comune>Tuoro sul Trasimeno</comune>
													<comune>Umbertide</comune>
													<comune>Valfabbrica</comune>
													<comune>Vallo di Nera</comune>
													<comune>Valtopina</comune>
												</comuni>
											</prov>
											<prov>
												<code>PU</code>
												<name>PESARO - URBINO</name>
												<region>MARCHE</region>
												<comuni>
													<comune>Acqualagna</comune>
													<comune>Apecchio</comune>
													<comune>Auditore</comune>
													<comune>Barchi</comune>
													<comune>Belforte all'Isauro</comune>
													<comune>Borgo Pace</comune>
													<comune>Cagli</comune>
													<comune>Cantiano</comune>
													<comune>Carpegna</comune>
													<comune>Cartoceto</comune>
													<comune>Casteldelci</comune>
													<comune>Colbordolo</comune>
													<comune>Fano</comune>
													<comune>Fermignano</comune>
													<comune>Fossombrone</comune>
													<comune>Fratte Rosa</comune>
													<comune>Frontino</comune>
													<comune>Frontone</comune>
													<comune>Gabicce Mare</comune>
													<comune>Gradara</comune>
													<comune>Isola del Piano</comune>
													<comune>Lunano</comune>
													<comune>Macerata Feltria</comune>
													<comune>Maiolo</comune>
													<comune>Mercatello sul Metauro</comune>
													<comune>Mercatino Conca</comune>
													<comune>Mombaroccio</comune>
													<comune>Mondavio</comune>
													<comune>Mondolfo</comune>
													<comune>Monte Cerignone</comune>
													<comune>Monte Grimano</comune>
													<comune>Monte Porzio</comune>
													<comune>Montecalvo in Foglia</comune>
													<comune>Monteciccardo</comune>
													<comune>Montecopiolo</comune>
													<comune>Montefelcino</comune>
													<comune>Montelabbate</comune>
													<comune>Montemaggiore al Metauro</comune>
													<comune>Novafeltria</comune>
													<comune>Orciano di Pesaro</comune>
													<comune>Peglio</comune>
													<comune>Pennabilli</comune>
													<comune>Pergola</comune>
													<comune>Pesaro</comune>
													<comune>Petriano</comune>
													<comune>Piagge</comune>
													<comune>Piandimeleto</comune>
													<comune>Pietrarubbia</comune>
													<comune>Piobbico</comune>
													<comune>Saltara</comune>
													<comune>San Costanzo</comune>
													<comune>San Giorgio di Pesaro</comune>
													<comune>San Leo</comune>
													<comune>San Lorenzo in Campo</comune>
													<comune>Sant'Agata Feltria</comune>
													<comune>Sant'Angelo in Lizzola</comune>
													<comune>Sant'Angelo in Vado</comune>
													<comune>Sant'Ippolito</comune>
													<comune>Sassocorvaro</comune>
													<comune>Sassofeltrio</comune>
													<comune>Serra Sant'Abbondio</comune>
													<comune>Serrungarina</comune>
													<comune>Talamello</comune>
													<comune>Tavoleto</comune>
													<comune>Tavullia</comune>
													<comune>Urbania</comune>
													<comune>Urbino</comune>
												</comuni>
											</prov>
											<prov>
												<code>PE</code>
												<name>PESCARA</name>
												<region>ABRUZZO</region>
												<comuni>
													<comune>Abbateggio</comune>
													<comune>Alanno</comune>
													<comune>Bolognano</comune>
													<comune>Brittoli</comune>
													<comune>Bussi sul Tirino</comune>
													<comune>Cappelle sul Tavo</comune>
													<comune>Caramanico Terme</comune>
													<comune>Carpineto della Nora</comune>
													<comune>Castiglione a Casauria</comune>
													<comune>Catignano</comune>
													<comune>Cepagatti</comune>
													<comune>Città Sant'Angelo</comune>
													<comune>Civitaquana</comune>
													<comune>Civitella Casanova</comune>
													<comune>Collecorvino</comune>
													<comune>Corvara</comune>
													<comune>Cugnoli</comune>
													<comune>Elice</comune>
													<comune>Farindola</comune>
													<comune>Lettomanoppello</comune>
													<comune>Loreto Aprutino</comune>
													<comune>Manoppello</comune>
													<comune>Montebello di Bertona</comune>
													<comune>Montesilvano</comune>
													<comune>Moscufo</comune>
													<comune>Nocciano</comune>
													<comune>Penne</comune>
													<comune>Pescara</comune>
													<comune>Pescosansonesco</comune>
													<comune>Pianella</comune>
													<comune>Picciano</comune>
													<comune>Pietranico</comune>
													<comune>Popoli</comune>
													<comune>Roccamorice</comune>
													<comune>Rosciano</comune>
													<comune>Salle</comune>
													<comune>San Valentino in Abruzzo Citeriore</comune>
													<comune>Sant'Eufemia a Maiella</comune>
													<comune>Scafa</comune>
													<comune>Serramonacesca</comune>
													<comune>Spoltore</comune>
													<comune>Tocco da Casauria</comune>
													<comune>Torre De' Passeri</comune>
													<comune>Turrivalignani</comune>
													<comune>Vicoli</comune>
													<comune>Villa Celiera</comune>
												</comuni>
											</prov>
											<prov>
												<code>PC</code>
												<name>PIACENZA</name>
												<region>EMILIA ROMAGNA</region>
												<comuni>
													<comune>Agazzano</comune>
													<comune>Alseno</comune>
													<comune>Besenzone</comune>
													<comune>Bettola</comune>
													<comune>Bobbio</comune>
													<comune>Borgonovo Val Tidone</comune>
													<comune>Cadeo</comune>
													<comune>Calendasco</comune>
													<comune>Caminata</comune>
													<comune>Caorso</comune>
													<comune>Carpaneto Piacentino</comune>
													<comune>Castel San Giovanni</comune>
													<comune>Castell'Arquato</comune>
													<comune>Castelvetro Piacentino</comune>
													<comune>Cerignale</comune>
													<comune>Coli</comune>
													<comune>Corte Brugnatella</comune>
													<comune>Cortemaggiore</comune>
													<comune>Farini</comune>
													<comune>Ferriere</comune>
													<comune>Fiorenzuola d'Arda</comune>
													<comune>Gazzola</comune>
													<comune>Gossolengo</comune>
													<comune>Gragnano Trebbiense</comune>
													<comune>Gropparello</comune>
													<comune>Lugagnano Val D'Arda</comune>
													<comune>Monticelli d'Ongina</comune>
													<comune>Morfasso</comune>
													<comune>Nibbiano</comune>
													<comune>Ottone</comune>
													<comune>Pecorara</comune>
													<comune>Piacenza</comune>
													<comune>Pianello Val Tidone</comune>
													<comune>Piozzano</comune>
													<comune>Podenzano</comune>
													<comune>Ponte dell'Olio</comune>
													<comune>Pontenure</comune>
													<comune>Rivergaro</comune>
													<comune>Rottofreno</comune>
													<comune>San Giorgio Piacentino</comune>
													<comune>San Pietro in Cerro</comune>
													<comune>Sarmato</comune>
													<comune>Travo</comune>
													<comune>Vernasca</comune>
													<comune>Vigolzone</comune>
													<comune>Villanova sull'Arda</comune>
													<comune>Zerba</comune>
													<comune>Ziano Piacentino</comune>
												</comuni>
											</prov>
											<prov>
												<code>PI</code>
												<name>PISA</name>
												<region>TOSCANA</region>
												<comuni>
													<comune>Bientina</comune>
													<comune>Buti</comune>
													<comune>Calci</comune>
													<comune>Calcinaia</comune>
													<comune>Capannoli</comune>
													<comune>Casale Marittimo</comune>
													<comune>Casciana Terme</comune>
													<comune>Cascina</comune>
													<comune>Castelfranco di Sotto</comune>
													<comune>Castellina Marittima</comune>
													<comune>Castelnuovo di Val di Cecina</comune>
													<comune>Chianni</comune>
													<comune>Crespina</comune>
													<comune>Fauglia</comune>
													<comune>Guardistallo</comune>
													<comune>Lajatico</comune>
													<comune>Lari</comune>
													<comune>Lorenzana</comune>
													<comune>Montecatini Val di Cecina</comune>
													<comune>Montescudaio</comune>
													<comune>Monteverdi Marittimo</comune>
													<comune>Montopoli in Val d'Arno</comune>
													<comune>Orciano Pisano</comune>
													<comune>Palaia</comune>
													<comune>Peccioli</comune>
													<comune>Pisa</comune>
													<comune>Pomarance</comune>
													<comune>Ponsacco</comune>
													<comune>Pontedera</comune>
													<comune>Riparbella</comune>
													<comune>San Giuliano Terme</comune>
													<comune>San Miniato</comune>
													<comune>Santa Croce sull'Arno</comune>
													<comune>Santa Luce</comune>
													<comune>Santa Maria a Monte</comune>
													<comune>Terricciola</comune>
													<comune>Vecchiano</comune>
													<comune>Vicopisano</comune>
													<comune>Volterra</comune>
												</comuni>
											</prov>
											<prov>
												<code>PT</code>
												<name>PISTOIA</name>
												<region>TOSCANA</region>
												<comuni>
													<comune>Abetone</comune>
													<comune>Agliana</comune>
													<comune>Buggiano</comune>
													<comune>Chiesina Uzzanese</comune>
													<comune>Cutigliano</comune>
													<comune>Lamporecchio</comune>
													<comune>Larciano</comune>
													<comune>Marliana</comune>
													<comune>Massa e Cozzile</comune>
													<comune>Monsummano Terme</comune>
													<comune>Montale</comune>
													<comune>Montecatini-Terme</comune>
													<comune>Pescia</comune>
													<comune>Pieve a Nievole</comune>
													<comune>Pistoia</comune>
													<comune>Piteglio</comune>
													<comune>Ponte Buggianese</comune>
													<comune>Quarrata</comune>
													<comune>Sambuca Pistoiese</comune>
													<comune>San Marcello Pistoiese</comune>
													<comune>Serravalle Pistoiese</comune>
													<comune>Uzzano</comune>
												</comuni>
											</prov>
											<prov>
												<code>PN</code>
												<name>PORDENONE</name>
												<region>FRIULI VENEZIA GIULIA</region>
												<comuni>
													<comune>Andreis</comune>
													<comune>Arba</comune>
													<comune>Arzene</comune>
													<comune>Aviano</comune>
													<comune>Azzano Decimo</comune>
													<comune>Barcis</comune>
													<comune>Brugnera</comune>
													<comune>Budoia</comune>
													<comune>Caneva</comune>
													<comune>Casarsa della Delizia</comune>
													<comune>Castelnovo del Friuli</comune>
													<comune>Cavasso Nuovo</comune>
													<comune>Chions</comune>
													<comune>Cimolais</comune>
													<comune>Claut</comune>
													<comune>Clauzetto</comune>
													<comune>Cordenons</comune>
													<comune>Cordovado</comune>
													<comune>Erto e Casso</comune>
													<comune>Fanna</comune>
													<comune>Fiume Veneto</comune>
													<comune>Fontanafredda</comune>
													<comune>Frisanco</comune>
													<comune>Maniago</comune>
													<comune>Meduno</comune>
													<comune>Montereale Valcellina</comune>
													<comune>Morsano al Tagliamento</comune>
													<comune>Pasiano di Pordenone</comune>
													<comune>Pinzano al Tagliamento</comune>
													<comune>Polcenigo</comune>
													<comune>Porcia</comune>
													<comune>Pordenone</comune>
													<comune>Prata di Pordenone</comune>
													<comune>Pravisdomini</comune>
													<comune>Roveredo in Piano</comune>
													<comune>Sacile</comune>
													<comune>San Giorgio della Richinvelda</comune>
													<comune>San Martino al Tagliamento</comune>
													<comune>San Quirino</comune>
													<comune>San Vito al Tagliamento</comune>
													<comune>Sequals</comune>
													<comune>Sesto al Reghena</comune>
													<comune>Spilimbergo</comune>
													<comune>Tramonti di Sopra</comune>
													<comune>Tramonti di Sotto</comune>
													<comune>Travesio</comune>
													<comune>Vajont</comune>
													<comune>Valvasone</comune>
													<comune>Vito d'Asio</comune>
													<comune>Vivaro</comune>
													<comune>Zoppola</comune>
												</comuni>
											</prov>
											<prov>
												<code>PZ</code>
												<name>POTENZA</name>
												<region>BASILICATA</region>
												<comuni>
													<comune>Abriola</comune>
													<comune>Acerenza</comune>
													<comune>Albano di Lucania</comune>
													<comune>Anzi</comune>
													<comune>Armento</comune>
													<comune>Atella</comune>
													<comune>Avigliano</comune>
													<comune>Balvano</comune>
													<comune>Banzi</comune>
													<comune>Baragiano</comune>
													<comune>Barile</comune>
													<comune>Bella</comune>
													<comune>Brienza</comune>
													<comune>Brindisi Montagna</comune>
													<comune>Calvello</comune>
													<comune>Calvera</comune>
													<comune>Campomaggiore</comune>
													<comune>Cancellara</comune>
													<comune>Carbone</comune>
													<comune>Castelgrande</comune>
													<comune>Castelluccio Inferiore</comune>
													<comune>Castelluccio Superiore</comune>
													<comune>Castelmezzano</comune>
													<comune>Castelsaraceno</comune>
													<comune>Castronuovo di Sant'Andrea</comune>
													<comune>Cersosimo</comune>
													<comune>Chiaromonte</comune>
													<comune>Corleto Perticara</comune>
													<comune>Episcopia</comune>
													<comune>Fardella</comune>
													<comune>Filiano</comune>
													<comune>Forenza</comune>
													<comune>Francavilla in Sinni</comune>
													<comune>Gallicchio</comune>
													<comune>Genzano di Lucania</comune>
													<comune>Ginestra</comune>
													<comune>Grumento Nova</comune>
													<comune>Guardia Perticara</comune>
													<comune>Lagonegro</comune>
													<comune>Latronico</comune>
													<comune>Laurenzana</comune>
													<comune>Lauria</comune>
													<comune>Lavello</comune>
													<comune>Maratea</comune>
													<comune>Marsico Nuovo</comune>
													<comune>Marsicovetere</comune>
													<comune>Maschito</comune>
													<comune>Melfi</comune>
													<comune>Missanello</comune>
													<comune>Moliterno</comune>
													<comune>Montemilone</comune>
													<comune>Montemurro</comune>
													<comune>Muro Lucano</comune>
													<comune>Nemoli</comune>
													<comune>Noepoli</comune>
													<comune>Oppido Lucano</comune>
													<comune>Palazzo San Gervasio</comune>
													<comune>Paterno</comune>
													<comune>Pescopagano</comune>
													<comune>Picerno</comune>
													<comune>Pietragalla</comune>
													<comune>Pietrapertosa</comune>
													<comune>Pignola</comune>
													<comune>Potenza</comune>
													<comune>Rapolla</comune>
													<comune>Rapone</comune>
													<comune>Rionero in Vulture</comune>
													<comune>Ripacandida</comune>
													<comune>Rivello</comune>
													<comune>Roccanova</comune>
													<comune>Rotonda</comune>
													<comune>Ruoti</comune>
													<comune>Ruvo del Monte</comune>
													<comune>San Chirico Nuovo</comune>
													<comune>San Chirico Raparo</comune>
													<comune>San Costantino Albanese</comune>
													<comune>San Fele</comune>
													<comune>San Martino d'Agri</comune>
													<comune>San Paolo Albanese</comune>
													<comune>San Severino Lucano</comune>
													<comune>Sant'Angelo Le Fratte</comune>
													<comune>Sant'Arcangelo</comune>
													<comune>Sarconi</comune>
													<comune>Sasso di Castalda</comune>
													<comune>Satriano di Lucania</comune>
													<comune>Savoia di Lucania</comune>
													<comune>Senise</comune>
													<comune>Spinoso</comune>
													<comune>Teana</comune>
													<comune>Terranova di Pollino</comune>
													<comune>Tito</comune>
													<comune>Tolve</comune>
													<comune>Tramutola</comune>
													<comune>Trecchina</comune>
													<comune>Trivigno</comune>
													<comune>Vaglio Basilicata</comune>
													<comune>Venosa</comune>
													<comune>Vietri di Potenza</comune>
													<comune>Viggianello</comune>
													<comune>Viggiano</comune>
												</comuni>
											</prov>
											<prov>
												<code>PO</code>
												<name>PRATO</name>
												<region>TOSCANA</region>
												<comuni>
													<comune>Cantagallo</comune>
													<comune>Carmignano</comune>
													<comune>Montemurlo</comune>
													<comune>Poggio a Caiano</comune>
													<comune>Prato</comune>
													<comune>Vaiano</comune>
													<comune>Vernio</comune>
												</comuni>
											</prov>
											<prov>
												<code>RG</code>
												<name>RAGUSA</name>
												<region>SICILIA</region>
												<comuni>
													<comune>Acate</comune>
													<comune>Chiaramonte Gulfi</comune>
													<comune>Comiso</comune>
													<comune>Giarratana</comune>
													<comune>Ispica</comune>
													<comune>Modica</comune>
													<comune>Monterosso Almo</comune>
													<comune>Pozzallo</comune>
													<comune>Ragusa</comune>
													<comune>Santa Croce Camerina</comune>
													<comune>Scicli</comune>
													<comune>Vittoria</comune>
												</comuni>
											</prov>
											<prov>
												<code>RA</code>
												<name>RAVENNA</name>
												<region>EMILIA ROMAGNA</region>
												<comuni>
													<comune>Alfonsine</comune>
													<comune>Bagnacavallo</comune>
													<comune>Bagnara di Romagna</comune>
													<comune>Brisighella</comune>
													<comune>Casola Valsenio</comune>
													<comune>Castel Bolognese</comune>
													<comune>Cervia</comune>
													<comune>Conselice</comune>
													<comune>Cotignola</comune>
													<comune>Faenza</comune>
													<comune>Fusignano</comune>
													<comune>Lugo</comune>
													<comune>Massa Lombarda</comune>
													<comune>Ravenna</comune>
													<comune>Riolo Terme</comune>
													<comune>Russi</comune>
													<comune>Sant'Agata sul Santerno</comune>
													<comune>Solarolo</comune>
												</comuni>
											</prov>
											<prov>
												<code>RC</code>
												<name>REGGIO CALABRIA</name>
												<region>CALABRIA</region>
												<comuni>
													<comune>Africo</comune>
													<comune>Agnana Calabra</comune>
													<comune>Anoia</comune>
													<comune>Antonimina</comune>
													<comune>Ardore</comune>
													<comune>Bagaladi</comune>
													<comune>Bagnara Calabra</comune>
													<comune>Benestare</comune>
													<comune>Bianco</comune>
													<comune>Bivongi</comune>
													<comune>Bova</comune>
													<comune>Bova Marina</comune>
													<comune>Bovalino</comune>
													<comune>Brancaleone</comune>
													<comune>Bruzzano Zeffirio</comune>
													<comune>Calanna</comune>
													<comune>Camini</comune>
													<comune>Campo Calabro</comune>
													<comune>Candidoni</comune>
													<comune>Canolo</comune>
													<comune>Caraffa del Bianco</comune>
													<comune>Cardeto</comune>
													<comune>Careri</comune>
													<comune>Casignana</comune>
													<comune>Caulonia</comune>
													<comune>Ciminà</comune>
													<comune>Cinquefrondi</comune>
													<comune>Cittanova</comune>
													<comune>Condofuri</comune>
													<comune>Cosoleto</comune>
													<comune>Delianuova</comune>
													<comune>Feroleto della Chiesa</comune>
													<comune>Ferruzzano</comune>
													<comune>Fiumara</comune>
													<comune>Galatro</comune>
													<comune>Gerace</comune>
													<comune>Giffone</comune>
													<comune>Gioia Tauro</comune>
													<comune>Gioiosa Ionica</comune>
													<comune>Grotteria</comune>
													<comune>Laganadi</comune>
													<comune>Laureana di Borrello</comune>
													<comune>Locri</comune>
													<comune>Mammola</comune>
													<comune>Marina di Gioiosa Ionica</comune>
													<comune>Maropati</comune>
													<comune>Martone</comune>
													<comune>Melicucco</comune>
													<comune>Melicuccà</comune>
													<comune>Melito di Porto Salvo</comune>
													<comune>Molochio</comune>
													<comune>Monasterace</comune>
													<comune>Montebello Ionico</comune>
													<comune>Motta San Giovanni</comune>
													<comune>Oppido Mamertina</comune>
													<comune>Palizzi</comune>
													<comune>Palmi</comune>
													<comune>Pazzano</comune>
													<comune>Placanica</comune>
													<comune>Platà</comune>
													<comune>Polistena</comune>
													<comune>Portigliola</comune>
													<comune>Reggio Calabria</comune>
													<comune>Riace</comune>
													<comune>Rizziconi</comune>
													<comune>Roccaforte del Greco</comune>
													<comune>Roccella Ionica</comune>
													<comune>Roghudi</comune>
													<comune>Rosarno</comune>
													<comune>Samo</comune>
													<comune>San Ferdinando</comune>
													<comune>San Giorgio Morgeto</comune>
													<comune>San Giovanni di Gerace</comune>
													<comune>San Lorenzo</comune>
													<comune>San Luca</comune>
													<comune>San Pietro di Caridà</comune>
													<comune>San Procopio</comune>
													<comune>San Roberto</comune>
													<comune>Sant'Agata del Bianco</comune>
													<comune>Sant'Alessio in Aspromonte</comune>
													<comune>Sant'Eufemia d'Aspromonte</comune>
													<comune>Sant'Ilario dello Ionio</comune>
													<comune>Santa Cristina d'Aspromonte</comune>
													<comune>Santo Stefano in Aspromonte</comune>
													<comune>Scido</comune>
													<comune>Scilla</comune>
													<comune>Seminara</comune>
													<comune>Serrata</comune>
													<comune>Siderno</comune>
													<comune>Sinopoli</comune>
													<comune>Staiti</comune>
													<comune>Stignano</comune>
													<comune>Stilo</comune>
													<comune>Taurianova</comune>
													<comune>Terranova Sappo Minulio</comune>
													<comune>Varapodio</comune>
													<comune>Villa San Giovanni</comune>
												</comuni>
											</prov>
											<prov>
												<code>RE</code>
												<name>REGGIO EMILIA</name>
												<region>EMILIA ROMAGNA</region>
												<comuni>
													<comune>Albinea</comune>
													<comune>Bagnolo in Piano</comune>
													<comune>Baiso</comune>
													<comune>Bibbiano</comune>
													<comune>Boretto</comune>
													<comune>Brescello</comune>
													<comune>Busana</comune>
													<comune>Cadelbosco di Sopra</comune>
													<comune>Campagnola Emilia</comune>
													<comune>Campegine</comune>
													<comune>Canossa</comune>
													<comune>Carpineti</comune>
													<comune>Casalgrande</comune>
													<comune>Casina</comune>
													<comune>Castellarano</comune>
													<comune>Castelnovo di Sotto</comune>
													<comune>Castelnovo ne' Monti</comune>
													<comune>Cavriago</comune>
													<comune>Collagna</comune>
													<comune>Correggio</comune>
													<comune>Fabbrico</comune>
													<comune>Gattatico</comune>
													<comune>Gualtieri</comune>
													<comune>Guastalla</comune>
													<comune>Ligonchio</comune>
													<comune>Luzzara</comune>
													<comune>Montecchio Emilia</comune>
													<comune>Novellara</comune>
													<comune>Poviglio</comune>
													<comune>Quattro Castella</comune>
													<comune>Ramiseto</comune>
													<comune>Reggio Emilia</comune>
													<comune>Reggiolo</comune>
													<comune>Rio Saliceto</comune>
													<comune>Rolo</comune>
													<comune>Rubiera</comune>
													<comune>San Martino in Rio</comune>
													<comune>San Polo d'Enza</comune>
													<comune>Sant'Ilario d'Enza</comune>
													<comune>Scandiano</comune>
													<comune>Toano</comune>
													<comune>Vetto</comune>
													<comune>Vezzano sul Crostolo</comune>
													<comune>Viano</comune>
													<comune>Villa Minozzo</comune>
												</comuni>
											</prov>
											<prov>
												<code>RI</code>
												<name>RIETI</name>
												<region>LAZIO</region>
												<comuni>
													<comune>Accumoli</comune>
													<comune>Amatrice</comune>
													<comune>Antrodoco</comune>
													<comune>Ascrea</comune>
													<comune>Belmonte in Sabina</comune>
													<comune>Borbona</comune>
													<comune>Borgo Velino</comune>
													<comune>Borgorose</comune>
													<comune>Cantalice</comune>
													<comune>Cantalupo in Sabina</comune>
													<comune>Casaprota</comune>
													<comune>Casperia</comune>
													<comune>Castel Sant'Angelo</comune>
													<comune>Castel di Tora</comune>
													<comune>Castelnuovo di Farfa</comune>
													<comune>Cittaducale</comune>
													<comune>Cittareale</comune>
													<comune>Collalto Sabino</comune>
													<comune>Colle di Tora</comune>
													<comune>Collegiove</comune>
													<comune>Collevecchio</comune>
													<comune>Colli sul Velino</comune>
													<comune>Concerviano</comune>
													<comune>Configni</comune>
													<comune>Contigliano</comune>
													<comune>Cottanello</comune>
													<comune>Fara in Sabina</comune>
													<comune>Fiamignano</comune>
													<comune>Forano</comune>
													<comune>Frasso Sabino</comune>
													<comune>Greccio</comune>
													<comune>Labro</comune>
													<comune>Leonessa</comune>
													<comune>Longone Sabino</comune>
													<comune>Magliano Sabina</comune>
													<comune>Marcetelli</comune>
													<comune>Micigliano</comune>
													<comune>Mompeo</comune>
													<comune>Montasola</comune>
													<comune>Monte San Giovanni in Sabina</comune>
													<comune>Montebuono</comune>
													<comune>Monteleone Sabino</comune>
													<comune>Montenero Sabino</comune>
													<comune>Montopoli di Sabina</comune>
													<comune>Morro Reatino</comune>
													<comune>Nespolo</comune>
													<comune>Orvinio</comune>
													<comune>Paganico Sabino</comune>
													<comune>Pescorocchiano</comune>
													<comune>Petrella Salto</comune>
													<comune>Poggio Bustone</comune>
													<comune>Poggio Catino</comune>
													<comune>Poggio Mirteto</comune>
													<comune>Poggio Moiano</comune>
													<comune>Poggio Nativo</comune>
													<comune>Poggio San Lorenzo</comune>
													<comune>Posta</comune>
													<comune>Pozzaglia Sabina</comune>
													<comune>Rieti</comune>
													<comune>Rivodutri</comune>
													<comune>Rocca Sinibalda</comune>
													<comune>Roccantica</comune>
													<comune>Salisano</comune>
													<comune>Scandriglia</comune>
													<comune>Selci</comune>
													<comune>Stimigliano</comune>
													<comune>Tarano</comune>
													<comune>Toffia</comune>
													<comune>Torri in Sabina</comune>
													<comune>Torricella in Sabina</comune>
													<comune>Turania</comune>
													<comune>Vacone</comune>
													<comune>Varco Sabino</comune>
												</comuni>
											</prov>
											<prov>
												<code>RN</code>
												<name>RIMINI</name>
												<region>EMILIA ROMAGNA</region>
												<comuni>
													<comune>Bellaria Igea Marina</comune>
													<comune>Cattolica</comune>
													<comune>Coriano</comune>
													<comune>Gemmano</comune>
													<comune>Misano Adriatico</comune>
													<comune>Mondaino</comune>
													<comune>Monte Colombo</comune>
													<comune>Montefiore Conca</comune>
													<comune>Montegridolfo</comune>
													<comune>Montescudo</comune>
													<comune>Morciano di Romagna</comune>
													<comune>Poggio Berni</comune>
													<comune>Riccione</comune>
													<comune>Rimini</comune>
													<comune>Saludecio</comune>
													<comune>San Clemente</comune>
													<comune>San Giovanni in Marignano</comune>
													<comune>Santarcangelo di Romagna</comune>
													<comune>Torriana</comune>
													<comune>Verucchio</comune>
												</comuni>
											</prov>
											<prov>
												<code>RM</code>
												<name>ROMA</name>
												<region>LAZIO</region>
												<comuni>
													<comune>Affile</comune>
													<comune>Agosta</comune>
													<comune>Albano Laziale</comune>
													<comune>Allumiere</comune>
													<comune>Anguillara Sabazia</comune>
													<comune>Anticoli Corrado</comune>
													<comune>Anzio</comune>
													<comune>Arcinazzo Romano</comune>
													<comune>Ardea</comune>
													<comune>Ariccia</comune>
													<comune>Arsoli</comune>
													<comune>Artena</comune>
													<comune>Bellegra</comune>
													<comune>Bracciano</comune>
													<comune>Camerata Nuova</comune>
													<comune>Campagnano di Roma</comune>
													<comune>Canale Monterano</comune>
													<comune>Canterano</comune>
													<comune>Capena</comune>
													<comune>Capranica Prenestina</comune>
													<comune>Carpineto Romano</comune>
													<comune>Casape</comune>
													<comune>Castel Gandolfo</comune>
													<comune>Castel Madama</comune>
													<comune>Castel San Pietro Romano</comune>
													<comune>Castelnuovo di Porto</comune>
													<comune>Cave</comune>
													<comune>Cerreto Laziale</comune>
													<comune>Cervara di Roma</comune>
													<comune>Cerveteri</comune>
													<comune>Ciampino</comune>
													<comune>Ciciliano</comune>
													<comune>Cineto Romano</comune>
													<comune>Civitavecchia</comune>
													<comune>Civitella San Paolo</comune>
													<comune>Colleferro</comune>
													<comune>Colonna</comune>
													<comune>Fiano Romano</comune>
													<comune>Filacciano</comune>
													<comune>Fiumicino</comune>
													<comune>Fonte Nuova</comune>
													<comune>Formello</comune>
													<comune>Frascati</comune>
													<comune>Gallicano nel Lazio</comune>
													<comune>Gavignano</comune>
													<comune>Genazzano</comune>
													<comune>Genzano di Roma</comune>
													<comune>Gerano</comune>
													<comune>Gorga</comune>
													<comune>Grottaferrata</comune>
													<comune>Guidonia Montecelio</comune>
													<comune>Jenne</comune>
													<comune>Labico</comune>
													<comune>Ladispoli</comune>
													<comune>Lanuvio</comune>
													<comune>Lariano</comune>
													<comune>Licenza</comune>
													<comune>Magliano Romano</comune>
													<comune>Mandela</comune>
													<comune>Manziana</comune>
													<comune>Marano Equo</comune>
													<comune>Marcellina</comune>
													<comune>Marino</comune>
													<comune>Mazzano Romano</comune>
													<comune>Mentana</comune>
													<comune>Monte Compatri</comune>
													<comune>Monte Porzio Catone</comune>
													<comune>Monteflavio</comune>
													<comune>Montelanico</comune>
													<comune>Montelibretti</comune>
													<comune>Monterotondo</comune>
													<comune>Montorio Romano</comune>
													<comune>Moricone</comune>
													<comune>Morlupo</comune>
													<comune>Nazzano</comune>
													<comune>Nemi</comune>
													<comune>Nerola</comune>
													<comune>Nettuno</comune>
													<comune>Olevano Romano</comune>
													<comune>Palestrina</comune>
													<comune>Palombara Sabina</comune>
													<comune>Percile</comune>
													<comune>Pisoniano</comune>
													<comune>Poli</comune>
													<comune>Pomezia</comune>
													<comune>Ponzano Romano</comune>
													<comune>Riano</comune>
													<comune>Rignano Flaminio</comune>
													<comune>Riofreddo</comune>
													<comune>Rocca Canterano</comune>
													<comune>Rocca Priora</comune>
													<comune>Rocca Santo Stefano</comune>
													<comune>Rocca di Cave</comune>
													<comune>Rocca di Papa</comune>
													<comune>Roccagiovine</comune>
													<comune>Roiate</comune>
													<comune>Roma</comune>
													<comune>Roviano</comune>
													<comune>Sacrofano</comune>
													<comune>Sambuci</comune>
													<comune>San Cesareo</comune>
													<comune>San Gregorio da Sassola</comune>
													<comune>San Polo dei Cavalieri</comune>
													<comune>San Vito Romano</comune>
													<comune>Sant'Angelo Romano</comune>
													<comune>Sant'Oreste</comune>
													<comune>Santa Marinella</comune>
													<comune>Saracinesco</comune>
													<comune>Segni</comune>
													<comune>Subiaco</comune>
													<comune>Tivoli</comune>
													<comune>Tolfa</comune>
													<comune>Torrita Tiberina</comune>
													<comune>Trevignano Romano</comune>
													<comune>Vallepietra</comune>
													<comune>Vallinfreda</comune>
													<comune>Valmontone</comune>
													<comune>Velletri</comune>
													<comune>Vicovaro</comune>
													<comune>Vivaro Romano</comune>
													<comune>Zagarolo</comune>
												</comuni>
											</prov>
											<prov>
												<code>RO</code>
												<name>ROVIGO</name>
												<region>VENETO</region>
												<comuni>
													<comune>Adria</comune>
													<comune>Ariano nel Polesine</comune>
													<comune>Arquà Polesine</comune>
													<comune>Badia Polesine</comune>
													<comune>Bagnolo di Po</comune>
													<comune>Bergantino</comune>
													<comune>Bosaro</comune>
													<comune>Calto</comune>
													<comune>Canaro</comune>
													<comune>Canda</comune>
													<comune>Castelguglielmo</comune>
													<comune>Castelmassa</comune>
													<comune>Castelnovo Bariano</comune>
													<comune>Ceneselli</comune>
													<comune>Ceregnano</comune>
													<comune>Corbola</comune>
													<comune>Costa di Rovigo</comune>
													<comune>Crespino</comune>
													<comune>Ficarolo</comune>
													<comune>Fiesso Umbertiano</comune>
													<comune>Frassinelle Polesine</comune>
													<comune>Fratta Polesine</comune>
													<comune>Gaiba</comune>
													<comune>Gavello</comune>
													<comune>Giacciano con Baruchella</comune>
													<comune>Guarda Veneta</comune>
													<comune>Lendinara</comune>
													<comune>Loreo</comune>
													<comune>Lusia</comune>
													<comune>Melara</comune>
													<comune>Occhiobello</comune>
													<comune>Papozze</comune>
													<comune>Pettorazza Grimani</comune>
													<comune>Pincara</comune>
													<comune>Polesella</comune>
													<comune>Pontecchio Polesine</comune>
													<comune>Porto Tolle</comune>
													<comune>Porto Viro</comune>
													<comune>Rosolina</comune>
													<comune>Rovigo</comune>
													<comune>Salara</comune>
													<comune>San Bellino</comune>
													<comune>San Martino di Venezze</comune>
													<comune>Stienta</comune>
													<comune>Taglio di Po</comune>
													<comune>Trecenta</comune>
													<comune>Villadose</comune>
													<comune>Villamarzana</comune>
													<comune>Villanova Marchesana</comune>
													<comune>Villanova del Ghebbo</comune>
												</comuni>
											</prov>
											<prov>
												<code>SA</code>
												<name>SALERNO</name>
												<region>CALABRIA</region>
												<comuni>
													<comune>Acerno</comune>
													<comune>Agropoli</comune>
													<comune>Albanella</comune>
													<comune>Alfano</comune>
													<comune>Altavilla Silentina</comune>
													<comune>Amalfi</comune>
													<comune>Angri</comune>
													<comune>Aquara</comune>
													<comune>Ascea</comune>
													<comune>Atena Lucana</comune>
													<comune>Atrani</comune>
													<comune>Auletta</comune>
													<comune>Baronissi</comune>
													<comune>Battipaglia</comune>
													<comune>Bellizzi</comune>
													<comune>Bellosguardo</comune>
													<comune>Bracigliano</comune>
													<comune>Buccino</comune>
													<comune>Buonabitacolo</comune>
													<comune>Caggiano</comune>
													<comune>Calvanico</comune>
													<comune>Camerota</comune>
													<comune>Campagna</comune>
													<comune>Campora</comune>
													<comune>Cannalonga</comune>
													<comune>Capaccio</comune>
													<comune>Casal Velino</comune>
													<comune>Casalbuono</comune>
													<comune>Casaletto Spartano</comune>
													<comune>Caselle in Pittari</comune>
													<comune>Castel San Giorgio</comune>
													<comune>Castel San Lorenzo</comune>
													<comune>Castelcivita</comune>
													<comune>Castellabate</comune>
													<comune>Castelnuovo Cilento</comune>
													<comune>Castelnuovo di Conza</comune>
													<comune>Castiglione del Genovesi</comune>
													<comune>Cava de' Tirreni</comune>
													<comune>Celle di Bulgheria</comune>
													<comune>Centola</comune>
													<comune>Ceraso</comune>
													<comune>Cetara</comune>
													<comune>Cicerale</comune>
													<comune>Colliano</comune>
													<comune>Conca dei Marini</comune>
													<comune>Controne</comune>
													<comune>Contursi Terme</comune>
													<comune>Corbara</comune>
													<comune>Corleto Monforte</comune>
													<comune>Cuccaro Vetere</comune>
													<comune>Eboli</comune>
													<comune>Felitto</comune>
													<comune>Fisciano</comune>
													<comune>Furore</comune>
													<comune>Futani</comune>
													<comune>Giffoni Sei Casali</comune>
													<comune>Giffoni Valle Piana</comune>
													<comune>Gioi</comune>
													<comune>Giungano</comune>
													<comune>Ispani</comune>
													<comune>Laureana Cilento</comune>
													<comune>Laurino</comune>
													<comune>Laurito</comune>
													<comune>Laviano</comune>
													<comune>Lustra</comune>
													<comune>Magliano Vetere</comune>
													<comune>Maiori</comune>
													<comune>Mercato San Severino</comune>
													<comune>Minori</comune>
													<comune>Moio della Civitella</comune>
													<comune>Montano Antilia</comune>
													<comune>Monte San Giacomo</comune>
													<comune>Montecorice</comune>
													<comune>Montecorvino Pugliano</comune>
													<comune>Montecorvino Rovella</comune>
													<comune>Monteforte Cilento</comune>
													<comune>Montesano sulla Marcellana</comune>
													<comune>Morigerati</comune>
													<comune>Nocera Inferiore</comune>
													<comune>Nocera Superiore</comune>
													<comune>Novi Velia</comune>
													<comune>Ogliastro Cilento</comune>
													<comune>Olevano sul Tusciano</comune>
													<comune>Oliveto Citra</comune>
													<comune>Omignano</comune>
													<comune>Orria</comune>
													<comune>Ottati</comune>
													<comune>Padula</comune>
													<comune>Pagani</comune>
													<comune>Palomonte</comune>
													<comune>Pellezzano</comune>
													<comune>Perdifumo</comune>
													<comune>Perito</comune>
													<comune>Pertosa</comune>
													<comune>Petina</comune>
													<comune>Piaggine</comune>
													<comune>Pisciotta</comune>
													<comune>Polla</comune>
													<comune>Pollica</comune>
													<comune>Pontecagnano Faiano</comune>
													<comune>Positano</comune>
													<comune>Postiglione</comune>
													<comune>Praiano</comune>
													<comune>Prignano Cilento</comune>
													<comune>Ravello</comune>
													<comune>Ricigliano</comune>
													<comune>Roccadaspide</comune>
													<comune>Roccagloriosa</comune>
													<comune>Roccapiemonte</comune>
													<comune>Rofrano</comune>
													<comune>Romagnano al Monte</comune>
													<comune>Roscigno</comune>
													<comune>Rutino</comune>
													<comune>Sacco</comune>
													<comune>Sala Consilina</comune>
													<comune>Salento</comune>
													<comune>Salerno</comune>
													<comune>Salvitelle</comune>
													<comune>San Cipriano Picentino</comune>
													<comune>San Giovanni a Piro</comune>
													<comune>San Gregorio Magno</comune>
													<comune>San Mango Piemonte</comune>
													<comune>San Marzano sul Sarno</comune>
													<comune>San Mauro Cilento</comune>
													<comune>San Mauro La Bruca</comune>
													<comune>San Pietro al Tanagro</comune>
													<comune>San Rufo</comune>
													<comune>San Valentino Torio</comune>
													<comune>Sant'Angelo a Fasanella</comune>
													<comune>Sant'Arsenio</comune>
													<comune>Sant'Egidio del Monte Albino</comune>
													<comune>Santa Marina</comune>
													<comune>Santomenna</comune>
													<comune>Sanza</comune>
													<comune>Sapri</comune>
													<comune>Sarno</comune>
													<comune>Sassano</comune>
													<comune>Scafati</comune>
													<comune>Scala</comune>
													<comune>Serramezzana</comune>
													<comune>Serre</comune>
													<comune>Sessa Cilento</comune>
													<comune>Siano</comune>
													<comune>Sicignano degli Alburni</comune>
													<comune>Stella Cilento</comune>
													<comune>Stio</comune>
													<comune>Teggiano</comune>
													<comune>Torchiara</comune>
													<comune>Torraca</comune>
													<comune>Torre Orsaia</comune>
													<comune>Tortorella</comune>
													<comune>Tramonti</comune>
													<comune>Trentinara</comune>
													<comune>Valle dell'Angelo</comune>
													<comune>Vallo della Lucania</comune>
													<comune>Valva</comune>
													<comune>Vibonati</comune>
													<comune>Vietri sul Mare</comune>
												</comuni>
											</prov>
											<prov>
												<code>SS</code>
												<name>SASSARI</name>
												<region>SARDEGNA</region>
												<comuni>
													<comune>Alghero</comune>
													<comune>Anela</comune>
													<comune>Ardara</comune>
													<comune>Banari</comune>
													<comune>Benetutti</comune>
													<comune>Bessude</comune>
													<comune>Bonnanaro</comune>
													<comune>Bono</comune>
													<comune>Bonorva</comune>
													<comune>Borutta</comune>
													<comune>Bottidda</comune>
													<comune>Bultei</comune>
													<comune>Bulzi</comune>
													<comune>Burgos</comune>
													<comune>Cargeghe</comune>
													<comune>Castelsardo</comune>
													<comune>Cheremule</comune>
													<comune>Chiaramonti</comune>
													<comune>Codrongianos</comune>
													<comune>Cossoine</comune>
													<comune>Erula</comune>
													<comune>Esporlatu</comune>
													<comune>Florinas</comune>
													<comune>Giave</comune>
													<comune>Illorai</comune>
													<comune>Ittireddu</comune>
													<comune>Ittiri</comune>
													<comune>Laerru</comune>
													<comune>Mara</comune>
													<comune>Martis</comune>
													<comune>Monteleone Rocca Doria</comune>
													<comune>Mores</comune>
													<comune>Muros</comune>
													<comune>Nughedu San Nicolà</comune>
													<comune>Nule</comune>
													<comune>Nulvi</comune>
													<comune>Olmedo</comune>
													<comune>Osilo</comune>
													<comune>Ossi</comune>
													<comune>Ozieri</comune>
													<comune>Padria</comune>
													<comune>Pattada</comune>
													<comune>Perfugas</comune>
													<comune>Ploaghe</comune>
													<comune>Porto Torres</comune>
													<comune>Pozzomaggiore</comune>
													<comune>Putifigari</comune>
													<comune>Romana</comune>
													<comune>Santa Maria Coghinas</comune>
													<comune>Sassari</comune>
													<comune>Sedini</comune>
													<comune>Semestene</comune>
													<comune>Sennori</comune>
													<comune>Siligo</comune>
													<comune>Sorso</comune>
													<comune>Stintino</comune>
													<comune>Tergu</comune>
													<comune>Thiesi</comune>
													<comune>Tissi</comune>
													<comune>Torralba</comune>
													<comune>Tula</comune>
													<comune>Uri</comune>
													<comune>Usini</comune>
													<comune>Valledoria</comune>
													<comune>Viddalba</comune>
													<comune>Villanova Monteleone</comune>
												</comuni>
											</prov>
											<prov>
												<code>SV</code>
												<name>SAVONA</name>
												<region>LIGURIA</region>
												<comuni>
													<comune>Alassio</comune>
													<comune>Albenga</comune>
													<comune>Albisola Superiore</comune>
													<comune>Albissola Marina</comune>
													<comune>Altare</comune>
													<comune>Andora</comune>
													<comune>Arnasco</comune>
													<comune>Balestrino</comune>
													<comune>Bardineto</comune>
													<comune>Bergeggi</comune>
													<comune>Boissano</comune>
													<comune>Borghetto Santo Spirito</comune>
													<comune>Borgio Verezzi</comune>
													<comune>Bormida</comune>
													<comune>Cairo Montenotte</comune>
													<comune>Calice Ligure</comune>
													<comune>Calizzano</comune>
													<comune>Carcare</comune>
													<comune>Casanova Lerrone</comune>
													<comune>Castelbianco</comune>
													<comune>Castelvecchio di Rocca Barbena</comune>
													<comune>Celle Ligure</comune>
													<comune>Cengio</comune>
													<comune>Ceriale</comune>
													<comune>Cisano sul Neva</comune>
													<comune>Cosseria</comune>
													<comune>Dego</comune>
													<comune>Erli</comune>
													<comune>Finale Ligure</comune>
													<comune>Garlenda</comune>
													<comune>Giustenice</comune>
													<comune>Giusvalla</comune>
													<comune>Laigueglia</comune>
													<comune>Loano</comune>
													<comune>Magliolo</comune>
													<comune>Mallare</comune>
													<comune>Massimino</comune>
													<comune>Millesimo</comune>
													<comune>Mioglia</comune>
													<comune>Murialdo</comune>
													<comune>Nasino</comune>
													<comune>Noli</comune>
													<comune>Onzo</comune>
													<comune>Orco Feglino</comune>
													<comune>Ortovero</comune>
													<comune>Osiglia</comune>
													<comune>Pallare</comune>
													<comune>Piana Crixia</comune>
													<comune>Pietra Ligure</comune>
													<comune>Plodio</comune>
													<comune>Pontinvrea</comune>
													<comune>Quiliano</comune>
													<comune>Rialto</comune>
													<comune>Roccavignale</comune>
													<comune>Sassello</comune>
													<comune>Savona</comune>
													<comune>Spotorno</comune>
													<comune>Stella</comune>
													<comune>Stellanello</comune>
													<comune>Testico</comune>
													<comune>Toirano</comune>
													<comune>Tovo San Giacomo</comune>
													<comune>Urbe</comune>
													<comune>Vado Ligure</comune>
													<comune>Varazze</comune>
													<comune>Vendone</comune>
													<comune>Vezzi Portio</comune>
													<comune>Villanova d'Albenga</comune>
													<comune>Zuccarello</comune>
												</comuni>
											</prov>
											<prov>
												<code>SI</code>
												<name>SIENA</name>
												<region>TOSCANA</region>
												<comuni>
													<comune>Abbadia San Salvatore</comune>
													<comune>Asciano</comune>
													<comune>Buonconvento</comune>
													<comune>Casole d'Elsa</comune>
													<comune>Castellina in Chianti</comune>
													<comune>Castelnuovo Berardenga</comune>
													<comune>Castiglione d'Orcia</comune>
													<comune>Cetona</comune>
													<comune>Chianciano Terme</comune>
													<comune>Chiusdino</comune>
													<comune>Chiusi</comune>
													<comune>Colle di Val d'Elsa</comune>
													<comune>Gaiole in Chianti</comune>
													<comune>Montalcino</comune>
													<comune>Montepulciano</comune>
													<comune>Monteriggioni</comune>
													<comune>Monteroni d'Arbia</comune>
													<comune>Monticiano</comune>
													<comune>Murlo</comune>
													<comune>Piancastagnaio</comune>
													<comune>Pienza</comune>
													<comune>Poggibonsi</comune>
													<comune>Radda in Chianti</comune>
													<comune>Radicofani</comune>
													<comune>Radicondoli</comune>
													<comune>Rapolano Terme</comune>
													<comune>San Casciano dei Bagni</comune>
													<comune>San Gimignano</comune>
													<comune>San Giovanni d'Asso</comune>
													<comune>San Quirico d'Orcia</comune>
													<comune>Sarteano</comune>
													<comune>Siena</comune>
													<comune>Sinalunga</comune>
													<comune>Sovicille</comune>
													<comune>Torrita di Siena</comune>
													<comune>Trequanda</comune>
												</comuni>
											</prov>
											<prov>
												<code>SR</code>
												<name>SIRACUSA</name>
												<region>SICILIA</region>
												<comuni>
													<comune>Augusta</comune>
													<comune>Avola</comune>
													<comune>Buccheri</comune>
													<comune>Buscemi</comune>
													<comune>Canicattini Bagni</comune>
													<comune>Carlentini</comune>
													<comune>Cassaro</comune>
													<comune>Ferla</comune>
													<comune>Floridia</comune>
													<comune>Francofonte</comune>
													<comune>Lentini</comune>
													<comune>Melilli</comune>
													<comune>Noto</comune>
													<comune>Pachino</comune>
													<comune>Palazzolo Acreide</comune>
													<comune>Portopalo di Capo Passero</comune>
													<comune>Priolo Gargallo</comune>
													<comune>Rosolini</comune>
													<comune>Siracusa</comune>
													<comune>Solarino</comune>
													<comune>Sortino</comune>
												</comuni>
											</prov>
											<prov>
												<code>SO</code>
												<name>SONDRIO</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Albaredo per San Marco</comune>
													<comune>Albosaggia</comune>
													<comune>Andalo Valtellino</comune>
													<comune>Aprica</comune>
													<comune>Ardenno</comune>
													<comune>Bema</comune>
													<comune>Berbenno di Valtellina</comune>
													<comune>Bianzone</comune>
													<comune>Bormio</comune>
													<comune>Buglio in Monte</comune>
													<comune>Caiolo</comune>
													<comune>Campodolcino</comune>
													<comune>Caspoggio</comune>
													<comune>Castello dell'Acqua</comune>
													<comune>Castione Andevenno</comune>
													<comune>Cedrasco</comune>
													<comune>Cercino</comune>
													<comune>Chiavenna</comune>
													<comune>Chiesa in Valmalenco</comune>
													<comune>Chiuro</comune>
													<comune>Cino</comune>
													<comune>Civo</comune>
													<comune>Colorina</comune>
													<comune>Cosio Valtellino</comune>
													<comune>Dazio</comune>
													<comune>Delebio</comune>
													<comune>Dubino</comune>
													<comune>Faedo Valtellino</comune>
													<comune>Forcola</comune>
													<comune>Fusine</comune>
													<comune>Gerola Alta</comune>
													<comune>Gordona</comune>
													<comune>Grosio</comune>
													<comune>Grosotto</comune>
													<comune>Lanzada</comune>
													<comune>Livigno</comune>
													<comune>Lovero</comune>
													<comune>Madesimo</comune>
													<comune>Mantello</comune>
													<comune>Mazzo di Valtellina</comune>
													<comune>Mello</comune>
													<comune>Menarola</comune>
													<comune>Mese</comune>
													<comune>Montagna in Valtellina</comune>
													<comune>Morbegno</comune>
													<comune>Novate Mezzola</comune>
													<comune>Pedesina</comune>
													<comune>Piantedo</comune>
													<comune>Piateda</comune>
													<comune>Piuro</comune>
													<comune>Poggiridenti</comune>
													<comune>Ponte in Valtellina</comune>
													<comune>Postalesio</comune>
													<comune>Prata Camportaccio</comune>
													<comune>Rasura</comune>
													<comune>Rogolo</comune>
													<comune>Samolaco</comune>
													<comune>San Giacomo Filippo</comune>
													<comune>Sernio</comune>
													<comune>Sondalo</comune>
													<comune>Sondrio</comune>
													<comune>Spriana</comune>
													<comune>Talamona</comune>
													<comune>Tartano</comune>
													<comune>Teglio</comune>
													<comune>Tirano</comune>
													<comune>Torre di Santa Maria</comune>
													<comune>Tovo di Sant'Agata</comune>
													<comune>Traona</comune>
													<comune>Tresivio</comune>
													<comune>Val Masino</comune>
													<comune>Valdidentro</comune>
													<comune>Valdisotto</comune>
													<comune>Valfurva</comune>
													<comune>Verceia</comune>
													<comune>Vervio</comune>
													<comune>Villa di Chiavenna</comune>
													<comune>Villa di Tirano</comune>
												</comuni>
											</prov>
											<prov>
												<code>TA</code>
												<name>TARANTO</name>
												<region>PUGLIA</region>
												<comuni>
													<comune>Avetrana</comune>
													<comune>Carosino</comune>
													<comune>Castellaneta</comune>
													<comune>Crispiano</comune>
													<comune>Faggiano</comune>
													<comune>Fragagnano</comune>
													<comune>Ginosa</comune>
													<comune>Grottaglie</comune>
													<comune>Laterza</comune>
													<comune>Leporano</comune>
													<comune>Lizzano</comune>
													<comune>Manduria</comune>
													<comune>Martina Franca</comune>
													<comune>Maruggio</comune>
													<comune>Massafra</comune>
													<comune>Monteiasi</comune>
													<comune>Montemesola</comune>
													<comune>Monteparano</comune>
													<comune>Mottola</comune>
													<comune>Palagianello</comune>
													<comune>Palagiano</comune>
													<comune>Pulsano</comune>
													<comune>Roccaforzata</comune>
													<comune>San Giorgio Ionico</comune>
													<comune>San Marzano di San Giuseppe</comune>
													<comune>Sava</comune>
													<comune>Statte</comune>
													<comune>Taranto</comune>
													<comune>Torricella</comune>
												</comuni>
											</prov>
											<prov>
												<code>TE</code>
												<name>TERAMO</name>
												<region>ABRUZZO</region>
												<comuni>
													<comune>Alba Adriatica</comune>
													<comune>Ancarano</comune>
													<comune>Arsita</comune>
													<comune>Atri</comune>
													<comune>Basciano</comune>
													<comune>Bellante</comune>
													<comune>Bisenti</comune>
													<comune>Campli</comune>
													<comune>Canzano</comune>
													<comune>Castel Castagna</comune>
													<comune>Castellalto</comune>
													<comune>Castelli</comune>
													<comune>Castiglione Messer Raimondo</comune>
													<comune>Castilenti</comune>
													<comune>Cellino Attanasio</comune>
													<comune>Cermignano</comune>
													<comune>Civitella del Tronto</comune>
													<comune>Colledara</comune>
													<comune>Colonnella</comune>
													<comune>Controguerra</comune>
													<comune>Corropoli</comune>
													<comune>Cortino</comune>
													<comune>Crognaleto</comune>
													<comune>Fano Adriano</comune>
													<comune>Giulianova</comune>
													<comune>Isola del Gran Sasso d'Italia</comune>
													<comune>Martinsicuro</comune>
													<comune>Montefino</comune>
													<comune>Montorio al Vomano</comune>
													<comune>Morro d'Oro</comune>
													<comune>Mosciano Sant'Angelo</comune>
													<comune>Nereto</comune>
													<comune>Notaresco</comune>
													<comune>Penna Sant'Andrea</comune>
													<comune>Pietracamela</comune>
													<comune>Pineto</comune>
													<comune>Rocca Santa Maria</comune>
													<comune>Roseto degli Abruzzi</comune>
													<comune>Sant'Egidio alla Vibrata</comune>
													<comune>Sant'Omero</comune>
													<comune>Silvi</comune>
													<comune>Teramo</comune>
													<comune>Torano Nuovo</comune>
													<comune>Torricella Sicura</comune>
													<comune>Tortoreto</comune>
													<comune>Tossicia</comune>
													<comune>Valle Castellana</comune>
												</comuni>
											</prov>
											<prov>
												<code>TR</code>
												<name>TERNI</name>
												<region>UMBRIA</region>
												<comuni>
													<comune>Acquasparta</comune>
													<comune>Allerona</comune>
													<comune>Alviano</comune>
													<comune>Amelia</comune>
													<comune>Arrone</comune>
													<comune>Attigliano</comune>
													<comune>Avigliano Umbro</comune>
													<comune>Baschi</comune>
													<comune>Calvi dell'Umbria</comune>
													<comune>Castel Giorgio</comune>
													<comune>Castel Viscardo</comune>
													<comune>Fabro</comune>
													<comune>Ferentillo</comune>
													<comune>Ficulle</comune>
													<comune>Giove</comune>
													<comune>Guardea</comune>
													<comune>Lugnano in Teverina</comune>
													<comune>Montecastrilli</comune>
													<comune>Montecchio</comune>
													<comune>Montefranco</comune>
													<comune>Montegabbione</comune>
													<comune>Monteleone d'Orvieto</comune>
													<comune>Narni</comune>
													<comune>Orvieto</comune>
													<comune>Otricoli</comune>
													<comune>Parrano</comune>
													<comune>Penna in Teverina</comune>
													<comune>Polino</comune>
													<comune>Porano</comune>
													<comune>San Gemini</comune>
													<comune>San Venanzo</comune>
													<comune>Stroncone</comune>
													<comune>Terni</comune>
												</comuni>
											</prov>
											<prov>
												<code>TO</code>
												<name>TORINO</name>
												<region>PIEMONTE</region>
												<comuni>
													<comune>Agliè</comune>
													<comune>Airasca</comune>
													<comune>Ala di Stura</comune>
													<comune>Albiano d'Ivrea</comune>
													<comune>Alice Superiore</comune>
													<comune>Almese</comune>
													<comune>Alpette</comune>
													<comune>Alpignano</comune>
													<comune>Andezeno</comune>
													<comune>Andrate</comune>
													<comune>Angrogna</comune>
													<comune>Arignano</comune>
													<comune>Avigliana</comune>
													<comune>Azeglio</comune>
													<comune>Bairo</comune>
													<comune>Balangero</comune>
													<comune>Baldissero Canavese</comune>
													<comune>Baldissero Torinese</comune>
													<comune>Balme</comune>
													<comune>Banchette</comune>
													<comune>Barbania</comune>
													<comune>Bardonecchia</comune>
													<comune>Barone Canavese</comune>
													<comune>Beinasco</comune>
													<comune>Bibiana</comune>
													<comune>Bobbio Pellice</comune>
													<comune>Bollengo</comune>
													<comune>Borgaro Torinese</comune>
													<comune>Borgiallo</comune>
													<comune>Borgofranco d'Ivrea</comune>
													<comune>Borgomasino</comune>
													<comune>Borgone Susa</comune>
													<comune>Bosconero</comune>
													<comune>Brandizzo</comune>
													<comune>Bricherasio</comune>
													<comune>Brosso</comune>
													<comune>Brozolo</comune>
													<comune>Bruino</comune>
													<comune>Brusasco</comune>
													<comune>Bruzolo</comune>
													<comune>Buriasco</comune>
													<comune>Burolo</comune>
													<comune>Busano</comune>
													<comune>Bussoleno</comune>
													<comune>Buttigliera Alta</comune>
													<comune>Cafasse</comune>
													<comune>Caluso</comune>
													<comune>Cambiano</comune>
													<comune>Campiglione-Fenile</comune>
													<comune>Candia Canavese</comune>
													<comune>Candiolo</comune>
													<comune>Canischio</comune>
													<comune>Cantalupa</comune>
													<comune>Cantoira</comune>
													<comune>Caprie</comune>
													<comune>Caravino</comune>
													<comune>Carema</comune>
													<comune>Carignano</comune>
													<comune>Carmagnola</comune>
													<comune>Casalborgone</comune>
													<comune>Cascinette d'Ivrea</comune>
													<comune>Caselette</comune>
													<comune>Caselle Torinese</comune>
													<comune>Castagneto Po</comune>
													<comune>Castagnole Piemonte</comune>
													<comune>Castellamonte</comune>
													<comune>Castelnuovo Nigra</comune>
													<comune>Castiglione Torinese</comune>
													<comune>Cavagnolo</comune>
													<comune>Cavour</comune>
													<comune>Cercenasco</comune>
													<comune>Ceres</comune>
													<comune>Ceresole Reale</comune>
													<comune>Cesana Torinese</comune>
													<comune>Chialamberto</comune>
													<comune>Chianocco</comune>
													<comune>Chiaverano</comune>
													<comune>Chieri</comune>
													<comune>Chiesanuova</comune>
													<comune>Chiomonte</comune>
													<comune>Chiusa di San Michele</comune>
													<comune>Chivasso</comune>
													<comune>Ciconio</comune>
													<comune>Cintano</comune>
													<comune>Cinzano</comune>
													<comune>Cirià</comune>
													<comune>Claviere</comune>
													<comune>Coassolo Torinese</comune>
													<comune>Coazze</comune>
													<comune>Collegno</comune>
													<comune>Colleretto Castelnuovo</comune>
													<comune>Colleretto Giacosa</comune>
													<comune>Condove</comune>
													<comune>Corio</comune>
													<comune>Cossano Canavese</comune>
													<comune>Cuceglio</comune>
													<comune>Cumiana</comune>
													<comune>Cuorgnà</comune>
													<comune>Druento</comune>
													<comune>Exilles</comune>
													<comune>Favria</comune>
													<comune>Feletto</comune>
													<comune>Fenestrelle</comune>
													<comune>Fiano</comune>
													<comune>Fiorano Canavese</comune>
													<comune>Foglizzo</comune>
													<comune>Forno Canavese</comune>
													<comune>Frassinetto</comune>
													<comune>Front</comune>
													<comune>Frossasco</comune>
													<comune>Garzigliana</comune>
													<comune>Gassino Torinese</comune>
													<comune>Germagnano</comune>
													<comune>Giaglione</comune>
													<comune>Giaveno</comune>
													<comune>Givoletto</comune>
													<comune>Gravere</comune>
													<comune>Groscavallo</comune>
													<comune>Grosso</comune>
													<comune>Grugliasco</comune>
													<comune>Ingria</comune>
													<comune>Inverso Pinasca</comune>
													<comune>Isolabella</comune>
													<comune>Issiglio</comune>
													<comune>Ivrea</comune>
													<comune>La Cassa</comune>
													<comune>La Loggia</comune>
													<comune>Lanzo Torinese</comune>
													<comune>Lauriano</comune>
													<comune>Leini</comune>
													<comune>Lemie</comune>
													<comune>Lessolo</comune>
													<comune>Levone</comune>
													<comune>Locana</comune>
													<comune>Lombardore</comune>
													<comune>Lombriasco</comune>
													<comune>Loranzà</comune>
													<comune>Lugnacco</comune>
													<comune>Luserna San Giovanni</comune>
													<comune>Lusernetta</comune>
													<comune>Lusiglià</comune>
													<comune>Macello</comune>
													<comune>Maglione</comune>
													<comune>Marentino</comune>
													<comune>Massello</comune>
													<comune>Mathi</comune>
													<comune>Mattie</comune>
													<comune>Mazzà</comune>
													<comune>Meana di Susa</comune>
													<comune>Mercenasco</comune>
													<comune>Meugliano</comune>
													<comune>Mezzenile</comune>
													<comune>Mombello di Torino</comune>
													<comune>Mompantero</comune>
													<comune>Monastero di Lanzo</comune>
													<comune>Moncalieri</comune>
													<comune>Moncenisio</comune>
													<comune>Montaldo Torinese</comune>
													<comune>Montalenghe</comune>
													<comune>Montalto Dora</comune>
													<comune>Montanaro</comune>
													<comune>Monteu da Po</comune>
													<comune>Moriondo Torinese</comune>
													<comune>Nichelino</comune>
													<comune>Noasca</comune>
													<comune>Nole</comune>
													<comune>Nomaglio</comune>
													<comune>None</comune>
													<comune>Novalesa</comune>
													<comune>Oglianico</comune>
													<comune>Orbassano</comune>
													<comune>Orio Canavese</comune>
													<comune>Osasco</comune>
													<comune>Osasio</comune>
													<comune>Oulx</comune>
													<comune>Ozegna</comune>
													<comune>Palazzo Canavese</comune>
													<comune>Pancalieri</comune>
													<comune>Parella</comune>
													<comune>Pavarolo</comune>
													<comune>Pavone Canavese</comune>
													<comune>Pecco</comune>
													<comune>Pecetto Torinese</comune>
													<comune>Perosa Argentina</comune>
													<comune>Perosa Canavese</comune>
													<comune>Perrero</comune>
													<comune>Pertusio</comune>
													<comune>Pessinetto</comune>
													<comune>Pianezza</comune>
													<comune>Pinasca</comune>
													<comune>Pinerolo</comune>
													<comune>Pino Torinese</comune>
													<comune>Piobesi Torinese</comune>
													<comune>Piossasco</comune>
													<comune>Piscina</comune>
													<comune>Piverone</comune>
													<comune>Poirino</comune>
													<comune>Pomaretto</comune>
													<comune>Pont-Canavese</comune>
													<comune>Porte</comune>
													<comune>Pragelato</comune>
													<comune>Prali</comune>
													<comune>Pralormo</comune>
													<comune>Pramollo</comune>
													<comune>Prarostino</comune>
													<comune>Prascorsano</comune>
													<comune>Pratiglione</comune>
													<comune>Quagliuzzo</comune>
													<comune>Quassolo</comune>
													<comune>Quincinetto</comune>
													<comune>Reano</comune>
													<comune>Ribordone</comune>
													<comune>Riva Presso Chieri</comune>
													<comune>Rivalba</comune>
													<comune>Rivalta di Torino</comune>
													<comune>Rivara</comune>
													<comune>Rivarolo Canavese</comune>
													<comune>Rivarossa</comune>
													<comune>Rivoli</comune>
													<comune>Robassomero</comune>
													<comune>Rocca Canavese</comune>
													<comune>Roletto</comune>
													<comune>Romano Canavese</comune>
													<comune>Ronco Canavese</comune>
													<comune>Rondissone</comune>
													<comune>Rorà</comune>
													<comune>Rosta</comune>
													<comune>Roure</comune>
													<comune>Rubiana</comune>
													<comune>Rueglio</comune>
													<comune>Salassa</comune>
													<comune>Salbertrand</comune>
													<comune>Salerano Canavese</comune>
													<comune>Salza di Pinerolo</comune>
													<comune>Samone</comune>
													<comune>San Benigno Canavese</comune>
													<comune>San Carlo Canavese</comune>
													<comune>San Colombano Belmonte</comune>
													<comune>San Didero</comune>
													<comune>San Francesco al Campo</comune>
													<comune>San Germano Chisone</comune>
													<comune>San Gillio</comune>
													<comune>San Giorgio Canavese</comune>
													<comune>San Giorio di Susa</comune>
													<comune>San Giusto Canavese</comune>
													<comune>San Martino Canavese</comune>
													<comune>San Maurizio Canavese</comune>
													<comune>San Mauro Torinese</comune>
													<comune>San Pietro Val Lemina</comune>
													<comune>San Ponso</comune>
													<comune>San Raffaele Cimena</comune>
													<comune>San Sebastiano da Po</comune>
													<comune>San Secondo di Pinerolo</comune>
													<comune>Sangano</comune>
													<comune>Sant'Ambrogio di Torino</comune>
													<comune>Sant'Antonino di Susa</comune>
													<comune>Santena</comune>
													<comune>Sauze d'Oulx</comune>
													<comune>Sauze di Cesana</comune>
													<comune>Scalenghe</comune>
													<comune>Scarmagno</comune>
													<comune>Sciolze</comune>
													<comune>Sestriere</comune>
													<comune>Settimo Rottaro</comune>
													<comune>Settimo Torinese</comune>
													<comune>Settimo Vittone</comune>
													<comune>Sparone</comune>
													<comune>Strambinello</comune>
													<comune>Strambino</comune>
													<comune>Susa</comune>
													<comune>Tavagnasco</comune>
													<comune>Torino</comune>
													<comune>Torrazza Piemonte</comune>
													<comune>Torre Canavese</comune>
													<comune>Torre Pellice</comune>
													<comune>Trana</comune>
													<comune>Trausella</comune>
													<comune>Traversella</comune>
													<comune>Traves</comune>
													<comune>Trofarello</comune>
													<comune>Usseaux</comune>
													<comune>Usseglio</comune>
													<comune>Vaie</comune>
													<comune>Val della Torre</comune>
													<comune>Valgioie</comune>
													<comune>Vallo Torinese</comune>
													<comune>Valperga</comune>
													<comune>Valprato Soana</comune>
													<comune>Varisella</comune>
													<comune>Vauda Canavese</comune>
													<comune>Venaria Reale</comune>
													<comune>Venaus</comune>
													<comune>Verolengo</comune>
													<comune>Verrua Savoia</comune>
													<comune>Vestignà</comune>
													<comune>Vialfrà</comune>
													<comune>Vico Canavese</comune>
													<comune>Vidracco</comune>
													<comune>Vigone</comune>
													<comune>Villafranca Piemonte</comune>
													<comune>Villanova Canavese</comune>
													<comune>Villar Dora</comune>
													<comune>Villar Focchiardo</comune>
													<comune>Villar Pellice</comune>
													<comune>Villar Perosa</comune>
													<comune>Villarbasse</comune>
													<comune>Villareggia</comune>
													<comune>Villastellone</comune>
													<comune>Vinovo</comune>
													<comune>Virle Piemonte</comune>
													<comune>Vische</comune>
													<comune>Vistrorio</comune>
													<comune>Vià</comune>
													<comune>Volpiano</comune>
													<comune>Volvera</comune>
												</comuni>
											</prov>
											<prov>
												<code>TP</code>
												<name>TRAPANI</name>
												<region>SICILIA</region>
												<comuni>
													<comune>Alcamo</comune>
													<comune>Buseto Palizzolo</comune>
													<comune>Calatafimi Segesta</comune>
													<comune>Campobello di Mazara</comune>
													<comune>Castellammare del Golfo</comune>
													<comune>Castelvetrano</comune>
													<comune>Custonaci</comune>
													<comune>Erice</comune>
													<comune>Favignana</comune>
													<comune>Gibellina</comune>
													<comune>Marsala</comune>
													<comune>Mazara del Vallo</comune>
													<comune>Paceco</comune>
													<comune>Pantelleria</comune>
													<comune>Partanna</comune>
													<comune>Petrosino</comune>
													<comune>Poggioreale</comune>
													<comune>Salaparuta</comune>
													<comune>Salemi</comune>
													<comune>San Vito Lo Capo</comune>
													<comune>Santa Ninfa</comune>
													<comune>Trapani</comune>
													<comune>Valderice</comune>
													<comune>Vita</comune>
												</comuni>
											</prov>
											<prov>
												<code>TN</code>
												<name>TRENTO</name>
												<region>TRENTINO ALTO ADIGE</region>
												<comuni>
													<comune>Ala</comune>
													<comune>Albiano</comune>
													<comune>Aldeno</comune>
													<comune>Amblar</comune>
													<comune>Andalo</comune>
													<comune>Arco</comune>
													<comune>Avio</comune>
													<comune>Baselga di Pinà</comune>
													<comune>Bedollo</comune>
													<comune>Bersone</comune>
													<comune>Besenello</comune>
													<comune>Bezzecca</comune>
													<comune>Bieno</comune>
													<comune>Bleggio Inferiore</comune>
													<comune>Bleggio Superiore</comune>
													<comune>Bocenago</comune>
													<comune>Bolbeno</comune>
													<comune>Bondo</comune>
													<comune>Bondone</comune>
													<comune>Borgo Valsugana</comune>
													<comune>Bosentino</comune>
													<comune>Breguzzo</comune>
													<comune>Brentonico</comune>
													<comune>Bresimo</comune>
													<comune>Brez</comune>
													<comune>Brione</comune>
													<comune>Caderzone</comune>
													<comune>Cagnà</comune>
													<comune>Calavino</comune>
													<comune>Calceranica al Lago</comune>
													<comune>Caldes</comune>
													<comune>Caldonazzo</comune>
													<comune>Calliano</comune>
													<comune>Campitello di Fassa</comune>
													<comune>Campodenno</comune>
													<comune>Canal San Bovo</comune>
													<comune>Canazei</comune>
													<comune>Capriana</comune>
													<comune>Carano</comune>
													<comune>Carisolo</comune>
													<comune>Carzano</comune>
													<comune>Castel Condino</comune>
													<comune>Castelfondo</comune>
													<comune>Castello Tesino</comune>
													<comune>Castello-Molina di Fiemme</comune>
													<comune>Castelnuovo</comune>
													<comune>Cavalese</comune>
													<comune>Cavareno</comune>
													<comune>Cavedago</comune>
													<comune>Cavedine</comune>
													<comune>Cavizzana</comune>
													<comune>Cembra</comune>
													<comune>Centa San Nicolà</comune>
													<comune>Cimego</comune>
													<comune>Cimone</comune>
													<comune>Cinte Tesino</comune>
													<comune>Cis</comune>
													<comune>Civezzano</comune>
													<comune>Cles</comune>
													<comune>Cloz</comune>
													<comune>Commezzadura</comune>
													<comune>Concei</comune>
													<comune>Condino</comune>
													<comune>Coredo</comune>
													<comune>Croviana</comune>
													<comune>Cunevo</comune>
													<comune>Daiano</comune>
													<comune>Dambel</comune>
													<comune>Daone</comune>
													<comune>Darà</comune>
													<comune>Denno</comune>
													<comune>Dimaro</comune>
													<comune>Don</comune>
													<comune>Dorsino</comune>
													<comune>Drena</comune>
													<comune>Dro</comune>
													<comune>Faedo</comune>
													<comune>Fai della Paganella</comune>
													<comune>Faver</comune>
													<comune>Fiavà</comune>
													<comune>Fiera di Primiero</comune>
													<comune>Fierozzo</comune>
													<comune>Flavon</comune>
													<comune>Folgaria</comune>
													<comune>Fondo</comune>
													<comune>Fornace</comune>
													<comune>Frassilongo</comune>
													<comune>Garniga Terme</comune>
													<comune>Giovo</comune>
													<comune>Giustino</comune>
													<comune>Grauno</comune>
													<comune>Grigno</comune>
													<comune>Grumes</comune>
													<comune>Imer</comune>
													<comune>Isera</comune>
													<comune>Ivano-Fracena</comune>
													<comune>Lardaro</comune>
													<comune>Lasino</comune>
													<comune>Lavarone</comune>
													<comune>Lavis</comune>
													<comune>Levico Terme</comune>
													<comune>Lisignago</comune>
													<comune>Livo</comune>
													<comune>Lomaso</comune>
													<comune>Lona-Lases</comune>
													<comune>Luserna</comune>
													<comune>Malosco</comune>
													<comune>Malà</comune>
													<comune>Massimeno</comune>
													<comune>Mazzin</comune>
													<comune>Mezzana</comune>
													<comune>Mezzano</comune>
													<comune>Mezzocorona</comune>
													<comune>Mezzolombardo</comune>
													<comune>Moena</comune>
													<comune>Molina di Ledro</comune>
													<comune>Molveno</comune>
													<comune>Monclassico</comune>
													<comune>Montagne</comune>
													<comune>Mori</comune>
													<comune>Nago-Torbole</comune>
													<comune>Nanno</comune>
													<comune>Nave San Rocco</comune>
													<comune>Nogaredo</comune>
													<comune>Nomi</comune>
													<comune>Novaledo</comune>
													<comune>Ospedaletto</comune>
													<comune>Ossana</comune>
													<comune>Padergnone</comune>
													<comune>Palà del Fersina</comune>
													<comune>Panchià</comune>
													<comune>Peio</comune>
													<comune>Pellizzano</comune>
													<comune>Pelugo</comune>
													<comune>Pergine Valsugana</comune>
													<comune>Pieve Tesino</comune>
													<comune>Pieve di Bono</comune>
													<comune>Pieve di Ledro</comune>
													<comune>Pinzolo</comune>
													<comune>Pomarolo</comune>
													<comune>Pozza di Fassa</comune>
													<comune>Praso</comune>
													<comune>Predazzo</comune>
													<comune>Preore</comune>
													<comune>Prezzo</comune>
													<comune>Rabbi</comune>
													<comune>Ragoli</comune>
													<comune>Revà</comune>
													<comune>Riva del Garda</comune>
													<comune>Romallo</comune>
													<comune>Romeno</comune>
													<comune>Roncegno Terme</comune>
													<comune>Ronchi Valsugana</comune>
													<comune>Roncone</comune>
													<comune>Ronzo-Chienis</comune>
													<comune>Ronzone</comune>
													<comune>Rovereto</comune>
													<comune>Roverà della Luna</comune>
													<comune>Ruffrà-Mendola</comune>
													<comune>Rumo</comune>
													<comune>Sagron Mis</comune>
													<comune>Samone</comune>
													<comune>San Lorenzo in Banale</comune>
													<comune>San Michele all'Adige</comune>
													<comune>Sant'Orsola Terme</comune>
													<comune>Sanzeno</comune>
													<comune>Sarnonico</comune>
													<comune>Scurelle</comune>
													<comune>Segonzano</comune>
													<comune>Sfruz</comune>
													<comune>Siror</comune>
													<comune>Smarano</comune>
													<comune>Soraga</comune>
													<comune>Sover</comune>
													<comune>Spera</comune>
													<comune>Spiazzo</comune>
													<comune>Spormaggiore</comune>
													<comune>Sporminore</comune>
													<comune>Stenico</comune>
													<comune>Storo</comune>
													<comune>Strembo</comune>
													<comune>Strigno</comune>
													<comune>Taio</comune>
													<comune>Tassullo</comune>
													<comune>Telve</comune>
													<comune>Telve di Sopra</comune>
													<comune>Tenna</comune>
													<comune>Tenno</comune>
													<comune>Terlago</comune>
													<comune>Terragnolo</comune>
													<comune>Terres</comune>
													<comune>Terzolas</comune>
													<comune>Tesero</comune>
													<comune>Tiarno di Sopra</comune>
													<comune>Tiarno di Sotto</comune>
													<comune>Tione di Trento</comune>
													<comune>Ton</comune>
													<comune>Tonadico</comune>
													<comune>Torcegno</comune>
													<comune>Trambileno</comune>
													<comune>Transacqua</comune>
													<comune>Trento</comune>
													<comune>Tres</comune>
													<comune>Tuenno</comune>
													<comune>Valda</comune>
													<comune>Valfloriana</comune>
													<comune>Vallarsa</comune>
													<comune>Varena</comune>
													<comune>Vattaro</comune>
													<comune>Vermiglio</comune>
													<comune>Vervà</comune>
													<comune>Vezzano</comune>
													<comune>Vignola-Falesina</comune>
													<comune>Vigo Rendena</comune>
													<comune>Vigo di Fassa</comune>
													<comune>Vigolo Vattaro</comune>
													<comune>Villa Agnedo</comune>
													<comune>Villa Lagarina</comune>
													<comune>Villa Rendena</comune>
													<comune>Volano</comune>
													<comune>Zambana</comune>
													<comune>Ziano di Fiemme</comune>
													<comune>Zuclo</comune>
												</comuni>
											</prov>
											<prov>
												<code>TV</code>
												<name>TREVISO</name>
												<region>VENETO</region>
												<comuni>
													<comune>Altivole</comune>
													<comune>Arcade</comune>
													<comune>Asolo</comune>
													<comune>Borso del Grappa</comune>
													<comune>Breda di Piave</comune>
													<comune>Caerano di San Marco</comune>
													<comune>Cappella Maggiore</comune>
													<comune>Carbonera</comune>
													<comune>Casale sul Sile</comune>
													<comune>Casier</comune>
													<comune>Castelcucco</comune>
													<comune>Castelfranco Veneto</comune>
													<comune>Castello di Godego</comune>
													<comune>Cavaso del Tomba</comune>
													<comune>Cessalto</comune>
													<comune>Chiarano</comune>
													<comune>Cimadolmo</comune>
													<comune>Cison di Valmarino</comune>
													<comune>Codognà</comune>
													<comune>Colle Umberto</comune>
													<comune>Conegliano</comune>
													<comune>Cordignano</comune>
													<comune>Cornuda</comune>
													<comune>Crespano del Grappa</comune>
													<comune>Crocetta del Montello</comune>
													<comune>Farra di Soligo</comune>
													<comune>Follina</comune>
													<comune>Fontanelle</comune>
													<comune>Fonte</comune>
													<comune>Fregona</comune>
													<comune>Gaiarine</comune>
													<comune>Giavera del Montello</comune>
													<comune>Godega di Sant'Urbano</comune>
													<comune>Gorgo al Monticano</comune>
													<comune>Istrana</comune>
													<comune>Loria</comune>
													<comune>Mansuà</comune>
													<comune>Mareno di Piave</comune>
													<comune>Maser</comune>
													<comune>Maserada sul Piave</comune>
													<comune>Meduna di Livenza</comune>
													<comune>Miane</comune>
													<comune>Mogliano Veneto</comune>
													<comune>Monastier di Treviso</comune>
													<comune>Monfumo</comune>
													<comune>Montebelluna</comune>
													<comune>Morgano</comune>
													<comune>Moriago della Battaglia</comune>
													<comune>Motta di Livenza</comune>
													<comune>Nervesa della Battaglia</comune>
													<comune>Oderzo</comune>
													<comune>Ormelle</comune>
													<comune>Orsago</comune>
													<comune>Paderno del Grappa</comune>
													<comune>Paese</comune>
													<comune>Pederobba</comune>
													<comune>Pieve di Soligo</comune>
													<comune>Ponte di Piave</comune>
													<comune>Ponzano Veneto</comune>
													<comune>Portobuffolà</comune>
													<comune>Possagno</comune>
													<comune>Povegliano</comune>
													<comune>Preganziol</comune>
													<comune>Quinto di Treviso</comune>
													<comune>Refrontolo</comune>
													<comune>Resana</comune>
													<comune>Revine Lago</comune>
													<comune>Riese Pio X</comune>
													<comune>Roncade</comune>
													<comune>Salgareda</comune>
													<comune>San Biagio di Callalta</comune>
													<comune>San Fior</comune>
													<comune>San Pietro di Feletto</comune>
													<comune>San Polo di Piave</comune>
													<comune>San Vendemiano</comune>
													<comune>San Zenone degli Ezzelini</comune>
													<comune>Santa Lucia di Piave</comune>
													<comune>Sarmede</comune>
													<comune>Segusino</comune>
													<comune>Sernaglia della Battaglia</comune>
													<comune>Silea</comune>
													<comune>Spresiano</comune>
													<comune>Susegana</comune>
													<comune>Tarzo</comune>
													<comune>Trevignano</comune>
													<comune>Treviso</comune>
													<comune>Valdobbiadene</comune>
													<comune>Vazzola</comune>
													<comune>Vedelago</comune>
													<comune>Vidor</comune>
													<comune>Villorba</comune>
													<comune>Vittorio Veneto</comune>
													<comune>Volpago del Montello</comune>
													<comune>Zenson di Piave</comune>
													<comune>Zero Branco</comune>
												</comuni>
											</prov>
											<prov>
												<code>TS</code>
												<name>TRIESTE</name>
												<region>FRIULI VENEZIA GIULIA</region>
												<comuni>
													<comune>Duino-Aurisina</comune>
													<comune>Monrupino</comune>
													<comune>Muggia</comune>
													<comune>San Dorligo della Valle</comune>
													<comune>Sgonico</comune>
													<comune>Trieste</comune>
												</comuni>
											</prov>
											<prov>
												<code>UD</code>
												<name>UDINE</name>
												<region>FRIULI VENEZIA GIULIA</region>
												<comuni>
													<comune>Aiello del Friuli</comune>
													<comune>Amaro</comune>
													<comune>Ampezzo</comune>
													<comune>Aquileia</comune>
													<comune>Arta Terme</comune>
													<comune>Artegna</comune>
													<comune>Attimis</comune>
													<comune>Bagnaria Arsa</comune>
													<comune>Basiliano</comune>
													<comune>Bertiolo</comune>
													<comune>Bicinicco</comune>
													<comune>Bordano</comune>
													<comune>Buia</comune>
													<comune>Buttrio</comune>
													<comune>Camino al Tagliamento</comune>
													<comune>Campoformido</comune>
													<comune>Campolongo al Torre</comune>
													<comune>Carlino</comune>
													<comune>Cassacco</comune>
													<comune>Castions di Strada</comune>
													<comune>Cavazzo Carnico</comune>
													<comune>Cercivento</comune>
													<comune>Cervignano del Friuli</comune>
													<comune>Chiopris-Viscone</comune>
													<comune>Chiusaforte</comune>
													<comune>Cividale del Friuli</comune>
													<comune>Codroipo</comune>
													<comune>Colloredo di Monte Albano</comune>
													<comune>Comeglians</comune>
													<comune>Corno di Rosazzo</comune>
													<comune>Coseano</comune>
													<comune>Dignano</comune>
													<comune>Dogna</comune>
													<comune>Drenchia</comune>
													<comune>Enemonzo</comune>
													<comune>Faedis</comune>
													<comune>Fagagna</comune>
													<comune>Fiumicello</comune>
													<comune>Flaibano</comune>
													<comune>Forgaria nel Friuli</comune>
													<comune>Forni Avoltri</comune>
													<comune>Forni di Sopra</comune>
													<comune>Forni di Sotto</comune>
													<comune>Gemona del Friuli</comune>
													<comune>Gonars</comune>
													<comune>Grimacco</comune>
													<comune>Latisana</comune>
													<comune>Lauco</comune>
													<comune>Lestizza</comune>
													<comune>Lignano Sabbiadoro</comune>
													<comune>Ligosullo</comune>
													<comune>Lusevera</comune>
													<comune>Magnano in Riviera</comune>
													<comune>Majano</comune>
													<comune>Malborghetto Valbruna</comune>
													<comune>Manzano</comune>
													<comune>Marano Lagunare</comune>
													<comune>Martignacco</comune>
													<comune>Mereto di Tomba</comune>
													<comune>Moggio Udinese</comune>
													<comune>Moimacco</comune>
													<comune>Montenars</comune>
													<comune>Mortegliano</comune>
													<comune>Moruzzo</comune>
													<comune>Muzzana del Turgnano</comune>
													<comune>Nimis</comune>
													<comune>Osoppo</comune>
													<comune>Ovaro</comune>
													<comune>Pagnacco</comune>
													<comune>Palazzolo dello Stella</comune>
													<comune>Palmanova</comune>
													<comune>Paluzza</comune>
													<comune>Pasian di Prato</comune>
													<comune>Paularo</comune>
													<comune>Pavia di Udine</comune>
													<comune>Pocenia</comune>
													<comune>Pontebba</comune>
													<comune>Porpetto</comune>
													<comune>Povoletto</comune>
													<comune>Pozzuolo del Friuli</comune>
													<comune>Pradamano</comune>
													<comune>Prato Carnico</comune>
													<comune>Precenicco</comune>
													<comune>Premariacco</comune>
													<comune>Preone</comune>
													<comune>Prepotto</comune>
													<comune>Pulfero</comune>
													<comune>Ragogna</comune>
													<comune>Ravascletto</comune>
													<comune>Raveo</comune>
													<comune>Reana del Rojale</comune>
													<comune>Remanzacco</comune>
													<comune>Resia</comune>
													<comune>Resiutta</comune>
													<comune>Rigolato</comune>
													<comune>Rive D'Arcano</comune>
													<comune>Rivignano</comune>
													<comune>Ronchis</comune>
													<comune>Ruda</comune>
													<comune>San Daniele del Friuli</comune>
													<comune>San Giorgio di Nogaro</comune>
													<comune>San Giovanni al Natisone</comune>
													<comune>San Leonardo</comune>
													<comune>San Pietro al Natisone</comune>
													<comune>San Vito al Torre</comune>
													<comune>San Vito di Fagagna</comune>
													<comune>Santa Maria La Longa</comune>
													<comune>Sauris</comune>
													<comune>Savogna</comune>
													<comune>Sedegliano</comune>
													<comune>Socchieve</comune>
													<comune>Stregna</comune>
													<comune>Sutrio</comune>
													<comune>Taipana</comune>
													<comune>Talmassons</comune>
													<comune>Tapogliano</comune>
													<comune>Tarcento</comune>
													<comune>Tarvisio</comune>
													<comune>Tavagnacco</comune>
													<comune>Teor</comune>
													<comune>Terzo d'Aquileia</comune>
													<comune>Tolmezzo</comune>
													<comune>Torreano</comune>
													<comune>Torviscosa</comune>
													<comune>Trasaghis</comune>
													<comune>Treppo Carnico</comune>
													<comune>Treppo Grande</comune>
													<comune>Tricesimo</comune>
													<comune>Trivignano Udinese</comune>
													<comune>Udine</comune>
													<comune>Varmo</comune>
													<comune>Venzone</comune>
													<comune>Verzegnis</comune>
													<comune>Villa Santina</comune>
													<comune>Villa Vicentina</comune>
													<comune>Visco</comune>
													<comune>Zuglio</comune>
												</comuni>
											</prov>
											<prov>
												<code>VA</code>
												<name>VARESE</name>
												<region>LOMBARDIA</region>
												<comuni>
													<comune>Agra</comune>
													<comune>Albizzate</comune>
													<comune>Angera</comune>
													<comune>Arcisate</comune>
													<comune>Arsago Seprio</comune>
													<comune>Azzate</comune>
													<comune>Azzio</comune>
													<comune>Barasso</comune>
													<comune>Bardello</comune>
													<comune>Bedero Valcuvia</comune>
													<comune>Besano</comune>
													<comune>Besnate</comune>
													<comune>Besozzo</comune>
													<comune>Biandronno</comune>
													<comune>Bisuschio</comune>
													<comune>Bodio Lomnago</comune>
													<comune>Brebbia</comune>
													<comune>Bregano</comune>
													<comune>Brenta</comune>
													<comune>Brezzo di Bedero</comune>
													<comune>Brinzio</comune>
													<comune>Brissago-Valtravaglia</comune>
													<comune>Brunello</comune>
													<comune>Brusimpiano</comune>
													<comune>Buguggiate</comune>
													<comune>Busto Arsizio</comune>
													<comune>Cadegliano-Viconago</comune>
													<comune>Cadrezzate</comune>
													<comune>Cairate</comune>
													<comune>Cantello</comune>
													<comune>Caravate</comune>
													<comune>Cardano al Campo</comune>
													<comune>Carnago</comune>
													<comune>Caronno Pertusella</comune>
													<comune>Caronno Varesino</comune>
													<comune>Casale Litta</comune>
													<comune>Casalzuigno</comune>
													<comune>Casciago</comune>
													<comune>Casorate Sempione</comune>
													<comune>Cassano Magnago</comune>
													<comune>Cassano Valcuvia</comune>
													<comune>Castellanza</comune>
													<comune>Castello Cabiaglio</comune>
													<comune>Castelseprio</comune>
													<comune>Castelveccana</comune>
													<comune>Castiglione Olona</comune>
													<comune>Castronno</comune>
													<comune>Cavaria con Premezzo</comune>
													<comune>Cazzago Brabbia</comune>
													<comune>Cislago</comune>
													<comune>Cittiglio</comune>
													<comune>Clivio</comune>
													<comune>Cocquio-Trevisago</comune>
													<comune>Comabbio</comune>
													<comune>Comerio</comune>
													<comune>Cremenaga</comune>
													<comune>Crosio della Valle</comune>
													<comune>Cuasso al Monte</comune>
													<comune>Cugliate-Fabiasco</comune>
													<comune>Cunardo</comune>
													<comune>Curiglia con Monteviasco</comune>
													<comune>Cuveglio</comune>
													<comune>Cuvio</comune>
													<comune>Daverio</comune>
													<comune>Dumenza</comune>
													<comune>Duno</comune>
													<comune>Fagnano Olona</comune>
													<comune>Ferno</comune>
													<comune>Ferrera di Varese</comune>
													<comune>Gallarate</comune>
													<comune>Galliate Lombardo</comune>
													<comune>Gavirate</comune>
													<comune>Gazzada Schianno</comune>
													<comune>Gemonio</comune>
													<comune>Gerenzano</comune>
													<comune>Germignaga</comune>
													<comune>Golasecca</comune>
													<comune>Gorla Maggiore</comune>
													<comune>Gorla Minore</comune>
													<comune>Gornate-Olona</comune>
													<comune>Grantola</comune>
													<comune>Inarzo</comune>
													<comune>Induno Olona</comune>
													<comune>Ispra</comune>
													<comune>Jerago con Orago</comune>
													<comune>Lavena Ponte Tresa</comune>
													<comune>Laveno-Mombello</comune>
													<comune>Leggiuno</comune>
													<comune>Lonate Ceppino</comune>
													<comune>Lonate Pozzolo</comune>
													<comune>Lozza</comune>
													<comune>Luino</comune>
													<comune>Luvinate</comune>
													<comune>Maccagno</comune>
													<comune>Malgesso</comune>
													<comune>Malnate</comune>
													<comune>Marchirolo</comune>
													<comune>Marnate</comune>
													<comune>Marzio</comune>
													<comune>Masciago Primo</comune>
													<comune>Mercallo</comune>
													<comune>Mesenzana</comune>
													<comune>Montegrino Valtravaglia</comune>
													<comune>Monvalle</comune>
													<comune>Morazzone</comune>
													<comune>Mornago</comune>
													<comune>Oggiona con Santo Stefano</comune>
													<comune>Olgiate Olona</comune>
													<comune>Origgio</comune>
													<comune>Orino</comune>
													<comune>Osmate</comune>
													<comune>Pino sulla Sponda del Lago Maggiore</comune>
													<comune>Porto Ceresio</comune>
													<comune>Porto Valtravaglia</comune>
													<comune>Rancio Valcuvia</comune>
													<comune>Ranco</comune>
													<comune>Saltrio</comune>
													<comune>Samarate</comune>
													<comune>Sangiano</comune>
													<comune>Saronno</comune>
													<comune>Sesto Calende</comune>
													<comune>Solbiate Arno</comune>
													<comune>Solbiate Olona</comune>
													<comune>Somma Lombardo</comune>
													<comune>Sumirago</comune>
													<comune>Taino</comune>
													<comune>Ternate</comune>
													<comune>Tradate</comune>
													<comune>Travedona-Monate</comune>
													<comune>Tronzano Lago Maggiore</comune>
													<comune>Uboldo</comune>
													<comune>Valganna</comune>
													<comune>Varano Borghi</comune>
													<comune>Varese</comune>
													<comune>Vedano Olona</comune>
													<comune>Veddasca</comune>
													<comune>Venegono Inferiore</comune>
													<comune>Venegono Superiore</comune>
													<comune>Vergiate</comune>
													<comune>Viggià</comune>
													<comune>Vizzola Ticino</comune>
												</comuni>
											</prov>
											<prov>
												<code>VE</code>
												<name>VENEZIA</name>
												<region>VENETO</region>
												<comuni>
													<comune>Annone Veneto</comune>
													<comune>Campagna Lupia</comune>
													<comune>Campolongo Maggiore</comune>
													<comune>Camponogara</comune>
													<comune>Caorle</comune>
													<comune>Cavallino-Treporti</comune>
													<comune>Cavarzere</comune>
													<comune>Ceggia</comune>
													<comune>Chioggia</comune>
													<comune>Cinto Caomaggiore</comune>
													<comune>Cona</comune>
													<comune>Concordia Sagittaria</comune>
													<comune>Dolo</comune>
													<comune>Eraclea</comune>
													<comune>Fiesso d'Artico</comune>
													<comune>Fossalta di Piave</comune>
													<comune>Fossalta di Portogruaro</comune>
													<comune>Fossà</comune>
													<comune>Gruaro</comune>
													<comune>Iesolo</comune>
													<comune>Marcon</comune>
													<comune>Martellago</comune>
													<comune>Meolo</comune>
													<comune>Mira</comune>
													<comune>Mirano</comune>
													<comune>Musile di Piave</comune>
													<comune>Noale</comune>
													<comune>Noventa di Piave</comune>
													<comune>Pianiga</comune>
													<comune>Portogruaro</comune>
													<comune>Pramaggiore</comune>
													<comune>Quarto d'Altino</comune>
													<comune>Salzano</comune>
													<comune>San Donà di Piave</comune>
													<comune>San Michele al Tagliamento</comune>
													<comune>Santa Maria di Sala</comune>
													<comune>Santo Stino di Livenza</comune>
													<comune>Scorzà</comune>
													<comune>Spinea</comune>
													<comune>Stra</comune>
													<comune>Teglio Veneto</comune>
													<comune>Torre di Mosto</comune>
													<comune>Venezia</comune>
													<comune>Vigonovo</comune>
												</comuni>
											</prov>
											<prov>
												<code>VB</code>
												<name>VERBANIA - CUSIO - OSSOLA</name>
												<region>PIEMONTE</region>
												<comuni>
													<comune>Antrona Schieranco</comune>
													<comune>Anzola d'Ossola</comune>
													<comune>Arizzano</comune>
													<comune>Arola</comune>
													<comune>Aurano</comune>
													<comune>Baceno</comune>
													<comune>Bannio Anzino</comune>
													<comune>Baveno</comune>
													<comune>Bee</comune>
													<comune>Belgirate</comune>
													<comune>Beura-Cardezza</comune>
													<comune>Bognanco</comune>
													<comune>Brovello-Carpugnino</comune>
													<comune>Calasca-Castiglione</comune>
													<comune>Cambiasca</comune>
													<comune>Cannero Riviera</comune>
													<comune>Cannobio</comune>
													<comune>Caprezzo</comune>
													<comune>Casale Corte Cerro</comune>
													<comune>Cavaglio-Spoccia</comune>
													<comune>Ceppo Morelli</comune>
													<comune>Cesara</comune>
													<comune>Cossogno</comune>
													<comune>Craveggia</comune>
													<comune>Crevoladossola</comune>
													<comune>Crodo</comune>
													<comune>Cursolo-Orasso</comune>
													<comune>Domodossola</comune>
													<comune>Druogno</comune>
													<comune>Falmenta</comune>
													<comune>Formazza</comune>
													<comune>Germagno</comune>
													<comune>Ghiffa</comune>
													<comune>Gignese</comune>
													<comune>Gravellona Toce</comune>
													<comune>Gurro</comune>
													<comune>Intragna</comune>
													<comune>Loreglia</comune>
													<comune>Macugnaga</comune>
													<comune>Madonna del Sasso</comune>
													<comune>Malesco</comune>
													<comune>Masera</comune>
													<comune>Massiola</comune>
													<comune>Mergozzo</comune>
													<comune>Miazzina</comune>
													<comune>Montecrestese</comune>
													<comune>Montescheno</comune>
													<comune>Nonio</comune>
													<comune>Oggebbio</comune>
													<comune>Omegna</comune>
													<comune>Ornavasso</comune>
													<comune>Pallanzeno</comune>
													<comune>Piedimulera</comune>
													<comune>Pieve Vergonte</comune>
													<comune>Premeno</comune>
													<comune>Premia</comune>
													<comune>Premosello-Chiovenda</comune>
													<comune>Quarna Sopra</comune>
													<comune>Quarna Sotto</comune>
													<comune>Re</comune>
													<comune>San Bernardino Verbano</comune>
													<comune>Santa Maria Maggiore</comune>
													<comune>Seppiana</comune>
													<comune>Stresa</comune>
													<comune>Toceno</comune>
													<comune>Trarego Viggiona</comune>
													<comune>Trasquera</comune>
													<comune>Trontano</comune>
													<comune>Valstrona</comune>
													<comune>Vanzone con San Carlo</comune>
													<comune>Varzo</comune>
													<comune>Verbania</comune>
													<comune>Viganella</comune>
													<comune>Vignone</comune>
													<comune>Villadossola</comune>
													<comune>Villette</comune>
													<comune>Vogogna</comune>
												</comuni>
											</prov>
											<prov>
												<code>VC</code>
												<name>VERCELLI</name>
												<region>PIEMONTE</region>
												<comuni>
													<comune>Alagna Valsesia</comune>
													<comune>Albano Vercellese</comune>
													<comune>Alice Castello</comune>
													<comune>Arborio</comune>
													<comune>Asigliano Vercellese</comune>
													<comune>Balmuccia</comune>
													<comune>Balocco</comune>
													<comune>Bianzà</comune>
													<comune>Boccioleto</comune>
													<comune>Borgo Vercelli</comune>
													<comune>Borgo d'Ale</comune>
													<comune>Borgosesia</comune>
													<comune>Breia</comune>
													<comune>Buronzo</comune>
													<comune>Campertogno</comune>
													<comune>Carcoforo</comune>
													<comune>Caresana</comune>
													<comune>Caresanablot</comune>
													<comune>Carisio</comune>
													<comune>Casanova Elvo</comune>
													<comune>Cellio</comune>
													<comune>Cervatto</comune>
													<comune>Cigliano</comune>
													<comune>Civiasco</comune>
													<comune>Collobiano</comune>
													<comune>Costanzana</comune>
													<comune>Cravagliana</comune>
													<comune>Crescentino</comune>
													<comune>Crova</comune>
													<comune>Desana</comune>
													<comune>Fobello</comune>
													<comune>Fontanetto Po</comune>
													<comune>Formigliana</comune>
													<comune>Gattinara</comune>
													<comune>Ghislarengo</comune>
													<comune>Greggio</comune>
													<comune>Guardabosone</comune>
													<comune>Lamporo</comune>
													<comune>Lenta</comune>
													<comune>Lignana</comune>
													<comune>Livorno Ferraris</comune>
													<comune>Lozzolo</comune>
													<comune>Mollia</comune>
													<comune>Moncrivello</comune>
													<comune>Motta de' Conti</comune>
													<comune>Olcenengo</comune>
													<comune>Oldenico</comune>
													<comune>Palazzolo Vercellese</comune>
													<comune>Pertengo</comune>
													<comune>Pezzana</comune>
													<comune>Pila</comune>
													<comune>Piode</comune>
													<comune>Postua</comune>
													<comune>Prarolo</comune>
													<comune>Quarona</comune>
													<comune>Quinto Vercellese</comune>
													<comune>Rassa</comune>
													<comune>Rima San Giuseppe</comune>
													<comune>Rimasco</comune>
													<comune>Rimella</comune>
													<comune>Riva Valdobbia</comune>
													<comune>Rive</comune>
													<comune>Roasio</comune>
													<comune>Ronsecco</comune>
													<comune>Rossa</comune>
													<comune>Rovasenda</comune>
													<comune>Sabbia</comune>
													<comune>Salasco</comune>
													<comune>Sali Vercellese</comune>
													<comune>Saluggia</comune>
													<comune>San Germano Vercellese</comune>
													<comune>San Giacomo Vercellese</comune>
													<comune>Santhià</comune>
													<comune>Scopa</comune>
													<comune>Scopello</comune>
													<comune>Serravalle Sesia</comune>
													<comune>Stroppiana</comune>
													<comune>Tricerro</comune>
													<comune>Trino</comune>
													<comune>Tronzano Vercellese</comune>
													<comune>Valduggia</comune>
													<comune>Varallo</comune>
													<comune>Vercelli</comune>
													<comune>Villarboit</comune>
													<comune>Villata</comune>
													<comune>Vocca</comune>
												</comuni>
											</prov>
											<prov>
												<code>VR</code>
												<name>VERONA</name>
												<region>VENETO</region>
												<comuni>
													<comune>Affi</comune>
													<comune>Albaredo d'Adige</comune>
													<comune>Angiari</comune>
													<comune>Arcole</comune>
													<comune>Badia Calavena</comune>
													<comune>Bardolino</comune>
													<comune>Belfiore</comune>
													<comune>Bevilacqua</comune>
													<comune>Bonavigo</comune>
													<comune>Boschi Sant'Anna</comune>
													<comune>Bosco Chiesanuova</comune>
													<comune>Bovolone</comune>
													<comune>Brentino Belluno</comune>
													<comune>Brenzone</comune>
													<comune>Bussolengo</comune>
													<comune>Buttapietra</comune>
													<comune>Caldiero</comune>
													<comune>Caprino Veronese</comune>
													<comune>Casaleone</comune>
													<comune>Castagnaro</comune>
													<comune>Castel d'Azzano</comune>
													<comune>Castelnuovo del Garda</comune>
													<comune>Cavaion Veronese</comune>
													<comune>Cazzano di Tramigna</comune>
													<comune>Cerea</comune>
													<comune>Cerro Veronese</comune>
													<comune>Cologna Veneta</comune>
													<comune>Colognola ai Colli</comune>
													<comune>Concamarise</comune>
													<comune>Costermano</comune>
													<comune>Dolcà</comune>
													<comune>Erbezzo</comune>
													<comune>Erbà</comune>
													<comune>Ferrara di Monte Baldo</comune>
													<comune>Fumane</comune>
													<comune>Garda</comune>
													<comune>Gazzo Veronese</comune>
													<comune>Grezzana</comune>
													<comune>Illasi</comune>
													<comune>Isola Rizza</comune>
													<comune>Isola della Scala</comune>
													<comune>Lavagno</comune>
													<comune>Lazise</comune>
													<comune>Legnago</comune>
													<comune>Malcesine</comune>
													<comune>Marano di Valpolicella</comune>
													<comune>Mezzane di Sotto</comune>
													<comune>Minerbe</comune>
													<comune>Montecchia di Crosara</comune>
													<comune>Monteforte d'Alpone</comune>
													<comune>Mozzecane</comune>
													<comune>Negrar</comune>
													<comune>Nogara</comune>
													<comune>Nogarole Rocca</comune>
													<comune>Oppeano</comune>
													<comune>Palà</comune>
													<comune>Pastrengo</comune>
													<comune>Pescantina</comune>
													<comune>Peschiera del Garda</comune>
													<comune>Povegliano Veronese</comune>
													<comune>Pressana</comune>
													<comune>Rivoli Veronese</comune>
													<comune>Ronco all'Adige</comune>
													<comune>Roncà</comune>
													<comune>Roverchiara</comune>
													<comune>Roveredo di Guà</comune>
													<comune>Roverà Veronese</comune>
													<comune>Salizzole</comune>
													<comune>San Bonifacio</comune>
													<comune>San Giovanni Ilarione</comune>
													<comune>San Giovanni Lupatoto</comune>
													<comune>San Martino Buon Albergo</comune>
													<comune>San Mauro di Saline</comune>
													<comune>San Pietro di Morubio</comune>
													<comune>San Pietro in Cariano</comune>
													<comune>San Zeno di Montagna</comune>
													<comune>Sanguinetto</comune>
													<comune>Sant'Ambrogio di Valpolicella</comune>
													<comune>Sant'Anna d'Alfaedo</comune>
													<comune>Selva di Progno</comune>
													<comune>Soave</comune>
													<comune>Sommacampagna</comune>
													<comune>Sona</comune>
													<comune>Sorgà</comune>
													<comune>Terrazzo</comune>
													<comune>Torri del Benaco</comune>
													<comune>Tregnago</comune>
													<comune>Trevenzuolo</comune>
													<comune>Valeggio sul Mincio</comune>
													<comune>Velo Veronese</comune>
													<comune>Verona</comune>
													<comune>Veronella</comune>
													<comune>Vestenanova</comune>
													<comune>Vigasio</comune>
													<comune>Villa Bartolomea</comune>
													<comune>Villafranca di Verona</comune>
													<comune>Zevio</comune>
													<comune>Zimella</comune>
												</comuni>
											</prov>
											<prov>
												<code>VV</code>
												<name>VIBO VALENTIA</name>
												<region>CALABRIA</region>
												<comuni>
													<comune>Acquaro</comune>
													<comune>Arena</comune>
													<comune>Briatico</comune>
													<comune>Brognaturo</comune>
													<comune>Capistrano</comune>
													<comune>Cessaniti</comune>
													<comune>Dasà</comune>
													<comune>Dinami</comune>
													<comune>Drapia</comune>
													<comune>Fabrizia</comune>
													<comune>Filadelfia</comune>
													<comune>Filandari</comune>
													<comune>Filogaso</comune>
													<comune>Francavilla Angitola</comune>
													<comune>Francica</comune>
													<comune>Gerocarne</comune>
													<comune>Jonadi</comune>
													<comune>Joppolo</comune>
													<comune>Limbadi</comune>
													<comune>Maierato</comune>
													<comune>Mileto</comune>
													<comune>Mongiana</comune>
													<comune>Monterosso Calabro</comune>
													<comune>Nardodipace</comune>
													<comune>Nicotera</comune>
													<comune>Parghelia</comune>
													<comune>Pizzo</comune>
													<comune>Pizzoni</comune>
													<comune>Polia</comune>
													<comune>Ricadi</comune>
													<comune>Rombiolo</comune>
													<comune>San Calogero</comune>
													<comune>San Costantino Calabro</comune>
													<comune>San Gregorio d'Ippona</comune>
													<comune>San Nicola da Crissa</comune>
													<comune>Sant'Onofrio</comune>
													<comune>Serra San Bruno</comune>
													<comune>Simbario</comune>
													<comune>Sorianello</comune>
													<comune>Soriano Calabro</comune>
													<comune>Spadola</comune>
													<comune>Spilinga</comune>
													<comune>Stefanaconi</comune>
													<comune>Tropea</comune>
													<comune>Vallelonga</comune>
													<comune>Vazzano</comune>
													<comune>Vibo Valentia</comune>
													<comune>Zaccanopoli</comune>
													<comune>Zambrone</comune>
													<comune>Zungri</comune>
												</comuni>
											</prov>
											<prov>
												<code>VI</code>
												<name>VICENZA</name>
												<region>VENETO</region>
												<comuni>
													<comune>Agugliaro</comune>
													<comune>Albettone</comune>
													<comune>Alonte</comune>
													<comune>Altavilla Vicentina</comune>
													<comune>Altissimo</comune>
													<comune>Arcugnano</comune>
													<comune>Arsiero</comune>
													<comune>Arzignano</comune>
													<comune>Asiago</comune>
													<comune>Asigliano Veneto</comune>
													<comune>Barbarano Vicentino</comune>
													<comune>Bassano del Grappa</comune>
													<comune>Bolzano Vicentino</comune>
													<comune>Breganze</comune>
													<comune>Brendola</comune>
													<comune>Bressanvido</comune>
													<comune>Brogliano</comune>
													<comune>Caldogno</comune>
													<comune>Caltrano</comune>
													<comune>Calvene</comune>
													<comune>Camisano Vicentino</comune>
													<comune>Campiglia dei Berici</comune>
													<comune>Campolongo sul Brenta</comune>
													<comune>Carrà</comune>
													<comune>Cartigliano</comune>
													<comune>Cassola</comune>
													<comune>Castegnero</comune>
													<comune>Castelgomberto</comune>
													<comune>Chiampo</comune>
													<comune>Chiuppano</comune>
													<comune>Cismon del Grappa</comune>
													<comune>Cogollo del Cengio</comune>
													<comune>Conco</comune>
													<comune>Cornedo Vicentino</comune>
													<comune>Costabissara</comune>
													<comune>Creazzo</comune>
													<comune>Crespadoro</comune>
													<comune>Dueville</comune>
													<comune>Enego</comune>
													<comune>Fara Vicentino</comune>
													<comune>Foza</comune>
													<comune>Gallio</comune>
													<comune>Gambellara</comune>
													<comune>Gambugliano</comune>
													<comune>Grancona</comune>
													<comune>Grisignano di Zocco</comune>
													<comune>Grumolo delle Abbadesse</comune>
													<comune>Isola Vicentina</comune>
													<comune>Laghi</comune>
													<comune>Lastebasse</comune>
													<comune>Longare</comune>
													<comune>Lonigo</comune>
													<comune>Lugo di Vicenza</comune>
													<comune>Lusiana</comune>
													<comune>Malo</comune>
													<comune>Marano Vicentino</comune>
													<comune>Marostica</comune>
													<comune>Mason Vicentino</comune>
													<comune>Molvena</comune>
													<comune>Monte di Malo</comune>
													<comune>Montebello Vicentino</comune>
													<comune>Montecchio Maggiore</comune>
													<comune>Montecchio Precalcino</comune>
													<comune>Montegalda</comune>
													<comune>Montegaldella</comune>
													<comune>Monteviale</comune>
													<comune>Monticello Conte Otto</comune>
													<comune>Montorso Vicentino</comune>
													<comune>Mossano</comune>
													<comune>Mussolente</comune>
													<comune>Nanto</comune>
													<comune>Nogarole Vicentino</comune>
													<comune>Nove</comune>
													<comune>Noventa Vicentina</comune>
													<comune>Orgiano</comune>
													<comune>Pedemonte</comune>
													<comune>Pianezze</comune>
													<comune>Piovene Rocchette</comune>
													<comune>Pojana Maggiore</comune>
													<comune>Posina</comune>
													<comune>Pove del Grappa</comune>
													<comune>Pozzoleone</comune>
													<comune>Quinto Vicentino</comune>
													<comune>Recoaro Terme</comune>
													<comune>Roana</comune>
													<comune>Romano d'Ezzelino</comune>
													<comune>Rossano Veneto</comune>
													<comune>Rosà</comune>
													<comune>Rotzo</comune>
													<comune>Salcedo</comune>
													<comune>San Germano dei Berici</comune>
													<comune>San Nazario</comune>
													<comune>San Pietro Mussolino</comune>
													<comune>San Vito di Leguzzano</comune>
													<comune>Sandrigo</comune>
													<comune>Santorso</comune>
													<comune>Sarcedo</comune>
													<comune>Sarego</comune>
													<comune>Schiavon</comune>
													<comune>Schio</comune>
													<comune>Solagna</comune>
													<comune>Sossano</comune>
													<comune>Sovizzo</comune>
													<comune>Tezze sul Brenta</comune>
													<comune>Thiene</comune>
													<comune>Tonezza del Cimone</comune>
													<comune>Torrebelvicino</comune>
													<comune>Torri di Quartesolo</comune>
													<comune>Trissino</comune>
													<comune>Valdagno</comune>
													<comune>Valdastico</comune>
													<comune>Valli del Pasubio</comune>
													<comune>Valstagna</comune>
													<comune>Velo d'Astico</comune>
													<comune>Vicenza</comune>
													<comune>Villaga</comune>
													<comune>Villaverla</comune>
													<comune>Zanà</comune>
													<comune>Zermeghedo</comune>
													<comune>Zovencedo</comune>
													<comune>Zugliano</comune>
												</comuni>
											</prov>
											<prov>
												<code>VT</code>
												<name>VITERBO</name>
												<region>LAZIO</region>
												<comuni>
													<comune>Acquapendente</comune>
													<comune>Arlena di Castro</comune>
													<comune>Bagnoregio</comune>
													<comune>Barbarano Romano</comune>
													<comune>Bassano Romano</comune>
													<comune>Bassano in Teverina</comune>
													<comune>Blera</comune>
													<comune>Bolsena</comune>
													<comune>Bomarzo</comune>
													<comune>Calcata</comune>
													<comune>Canepina</comune>
													<comune>Canino</comune>
													<comune>Capodimonte</comune>
													<comune>Capranica</comune>
													<comune>Caprarola</comune>
													<comune>Carbognano</comune>
													<comune>Castel Sant'Elia</comune>
													<comune>Castiglione in Teverina</comune>
													<comune>Celleno</comune>
													<comune>Cellere</comune>
													<comune>Civita Castellana</comune>
													<comune>Civitella d'Agliano</comune>
													<comune>Corchiano</comune>
													<comune>Fabrica di Roma</comune>
													<comune>Faleria</comune>
													<comune>Farnese</comune>
													<comune>Gallese</comune>
													<comune>Gradoli</comune>
													<comune>Graffignano</comune>
													<comune>Grotte di Castro</comune>
													<comune>Ischia di Castro</comune>
													<comune>Latera</comune>
													<comune>Lubriano</comune>
													<comune>Marta</comune>
													<comune>Montalto di Castro</comune>
													<comune>Monte Romano</comune>
													<comune>Montefiascone</comune>
													<comune>Monterosi</comune>
													<comune>Nepi</comune>
													<comune>Onano</comune>
													<comune>Oriolo Romano</comune>
													<comune>Orte</comune>
													<comune>Piansano</comune>
													<comune>Proceno</comune>
													<comune>Ronciglione</comune>
													<comune>San Lorenzo Nuovo</comune>
													<comune>Soriano nel Cimino</comune>
													<comune>Sutri</comune>
													<comune>Tarquinia</comune>
													<comune>Tessennano</comune>
													<comune>Tuscania</comune>
													<comune>Valentano</comune>
													<comune>Vallerano</comune>
													<comune>Vasanello</comune>
													<comune>Vejano</comune>
													<comune>Vetralla</comune>
													<comune>Vignanello</comune>
													<comune>Villa San Giovanni in Tuscia</comune>
													<comune>Viterbo</comune>
													<comune>Vitorchiano</comune>
												</comuni>
											</prov>
										</provs>		
	}
}