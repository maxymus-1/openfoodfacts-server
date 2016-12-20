#!/usr/bin/perl -w

use Modern::Perl '2015';

my %Nutriments = (

alcohol	=> {
	fr => "Alcool",
	en => "Alcohol",
	es => "Alcohol",
	ar=> "?????????",
	unit => '% vol',
	it => "Alcol",
	pt => "�lcool",
	de => "Alkohol",
	he => "???????",
	ga => "Alc�l",
	da => "Alkohol",
	el => "???????",
	fi => "Alkoholi",
	nl => "Alcohol",
	sv => "Alkohol",
	lv => "spirts",
	cs => "Alkohol",
	et => "Alkohol",
	hu => "Alkohol",
	pl => "Alkohol",
	sl => "Alkohol",
	lt => "Alkoholis",
	mt => "Alkohol",
	sk => "Alkohol",
	ro => "Alcool",
	bg => "???????",
},
energy	=> {
	fr => "�nergie",
	en => "Energy",
	es => "Energ�a",
	ar => "??????",
	unit => 'kj',
	it => "Energia",
	pt => "Energia",
	de => "Energie",
	he => "?????? - ???????",
	ga => "Fuinneamh",
	da => "Energi",
	el => "?????e?a",
	fi => "Energiav",
	nl => "Energie",
	sv => "Energi",
	lv => "Energetiska vertiba",
	cs => "Energetick� hodnota",
	et => "Energia",
	hu => "Energia",
	pl => "Wartosc energetyczna",
	sl => "Energijska vrednost",
	lt => "Energine verte",
	mt => "Energija",
	sk => "Energetick� hodnota",
	ro => "Valoarea energetica",
	bg => "????????? ????????",
},
proteins => {
	fr => "Prot�ines",
	en => "Proteins",
	es => "Prote�nas",
	ar => "????????",
	it => "Proteine",
	pt => "Prote�nas",
	he => "???????",
	ga => "Pr�it�in",
	de => "Eiwei�",
	da => "Protein",
	el => "???te??e?",
	fi => "Proteiini",
	nl => "Eiwitten",
	sv => "Protein",
	lv => "Olbaltumvielas",
	cs => "B�lkoviny",
	et => "Valgud",
	hu => "Feh�rje",
	pl => "Bialko",
	sl => "Beljakovine",
	lt => "Baltymai",
	mt => "Proteini",
	sk => "Bielkoviny",
	ro => "Proteine",
	bg => "???????",
},
casein => {
	fr => 'Cas�ine',
	en => 'Casein',
},
nucleotides => {
	fr => 'Nucl�otides',
	en => 'Nucleotides',
},
"serum-proteins" => {
	fr => "Prot�ines s�riques",
	en => "Serum proteins",
},
carbohydrates => {
	fr => "Glucides",
	en => "Carbohydrate",
	es => "Hidratos de carbono",
	ar => "??????????????",
	it => "Carboidrati",
	pt => "Carboidratos",
	pt_pt => "Hidratos de carbono",
	de => "Kohlenhydrate",
	he => "???????",
	ga => "Carbaihiodr�it",
	da => "Kulhydrat",
	el => "?dat????a?e?",
	fi => "Hiilihydraatti",
	nl => "Koolhydraten",
	sv => "Kolhydrat",
	lv => "Oglhidrati",
	cs => "Sacharidy",
	et => "S�sivesikud",
	hu => "Sz�nhidr�t",
	pl => "Weglowodany",
	sl => "Ogljikove hidrate",
	lt => "Angliavandeniai",
	mt => "Karboidrati",
	sk => "Sacharidy",
	ro => "gGlucide",
	bg => "????????????",
},
sugars => {
	fr => "Sucres",
	en => "Sugars",
	es => "Az�cares",
	ar => "?????",
	it => "Zuccheri",
	pt => "A��cares",
	de => "Zucker",
	he => "????",
	ga => "Si�cra�",
	da => "Sukkerarter",
	el => "S???a?a",
	fi => "Sokerit",
	nl => "Suikers",
	sv => "Sockerarter",
	lv => "Cukuri",
	cs => "Cukryv",
	et => "Suhkrud",
	hu => "Cukrok",
	pl => "Cukry",
	sl => "Sladkorjev",
	lt => "Cukrus",
	mt => "Zokkor",
	sk => "Cukry",
	ro => "Zaharuri",
	bg => "??????",
},
sucrose => {
	fr => 'Saccharose',
	en => 'Sucrose',
	es => 'Sacarosa',
	pt => 'Sacarose',
	he => '??????',
	de => 'Saccharose',

},
glucose => {
	fr => 'Glucose',
	en => 'Glucose',
	pt => 'Glucose',
	es => 'Glucosa',
	he => '??????',
	de => 'Traubenzucker',
},
fructose => {
	fr => 'Fructose',
	pt => 'Frutose',
	en => 'Fructose',
	es => 'Fructosa',
	he => '???????',
	de => 'Fruchtzucker',

},
lactose => {
	fr => 'Lactose',
	en => 'Lactose',
	pt => 'Lactose',
	es => 'Lactosa',
	he => '?????',
	de => 'Milchzucker',

},
maltose => {
	fr => 'Maltose',
	en => 'Maltose',
	pt => 'Maltose',
	es => 'Maltosa',
	he => '?????',
	de => 'Malzzucker',

},
maltodextrins => {
	fr => 'Maltodextrines',
	en => 'Maltodextrins',
	pt => 'Maltodextrinas',
	es => 'Maltodextrinas',
	he => '?????????????',
},
starch => {
	fr => "Amidon",
	en => "Starch",
	es => "Almid�n",
	it => "Amido",
	pt => "Amido",
	de => "St�rke",
	he => "?????",
	ga => "St�irse",
	da => "Stivelse",
	el => "?�???",
	fi => "T�rkkelys",
	nl => "Zetmeel",
	sv => "St�rkelse",
	lv => "Ciete",
	cs => "�krob",
	et => "T�rklis",
	hu => "Kem�ny�to",
	pl => "Skrobia",
	sl => "�kroba",
	lt => "Krakmolo",
	mt => "Lamtu",
	sk => "�krob",
	ro => "Amidon",
	bg => "????????",
},
polyols => {
	fr => "Polyols",
	en => "Sugar alcohols (Polyols)",
	es => "Az�cares alcoh�licos (Polialcoholes)",
	it => "Polialcoli/polioli (alcoli degli zuccheri)",
	de => "mehrwertige Alkohole (Polyole)",
	pt => "A��cares alco�licos (poli�lcools, poli�is)",
	he => "???? ???????? (???????)",
	ga => "Pol�il",
	da => "Polyoler",
	el => "??????e?",
	fi => "Polyolit",
	nl => "Polyolen",
	sv => "Polyoler",
	lv => "Polioli",
	cs => "Polyalkoholy",
	et => "Pol�oolid",
	hu => "Poliolok",
	pl => "Alkohole wielowodorotlenowe",
	sl => "Poliolov",
	lt => "Polioliu",
	mt => "Polioli",
	sk => "Alkoholick� cukry (polyoly)",
	ro => "Polioli",
	bg => "???????",
}, 
fat => {
	fr => "Lipides",
	en => "Fat",
	es => "Grasas",
	ar=> "??????",
	it => "Grassi",
	pt => "Gorduras",
	pt_pt => "L�pidos",
	de => "Fett",
	he => "??????",
	ga => "Saill",
	da => "Fedt",
	el => "??pa??",
	fi => "Rasva",
	nl => "Vetten",
	sv => "Fett",
	lv => "Tauki",
	cs => "Tuky",
	et => "Rasvad",
	hu => "Zs�r",
	pl => "Tluszcz",
	sl => "Ma�cobe",
	lt => "Riebalai",
	mt => "Xahmijiet",
	sk => "Tuky",
	ro => "Grasimi",
	bg => "???????",
},
'saturated-fat' => {
	fr => "Acides gras satur�s",
	en => "Saturated fat",
	es => "Grasas saturadas",
	it =>"Acidi Grassi saturi",
	pt => "Gorduras saturadas",
	pt_pt => "�cidos gordos saturados",
	de => "ges�ttigte Fetts�uren",
	he => "???? ????",
	ga => "s�Sithe�in saill",
	da => "M�ttede fedtsyrer",
	el => "???es�??a ??pa??",
	es => "�cidos grasos saturados",
	fi => "Tyydyttyneet rasvat",
	nl => "Verzadigde vetzuren",
	sv => "M�ttat fett",
	lv => "Piesatinatas taukskabes",
	cs => "Nasycen� mastn� kyseliny",
	et => "K�llastunud rasvhapped",
	hu => "Tel�tett zs�rsavak",
	pl => "Kwasy tluszczowe nasycone",
	sl => "Nasicene ma�cobe",
	lt => "Sociosios riebalu rug�tys",
	mt => "Saturati xahmijiet",
	sk => "Nas�ten� mastn� kyseliny",
	ro => "Acizi gra?i satura?i",
	bg => "???????? ?????? ????????",
},
'butyric-acid' => {
	en => 'Butyric acid (4:0)',
	es => '�cido but�rico (4:0)',
	pt => '�cido but�rico (4:0)',
	fr => 'Acide butyrique (4:0)',
	he => '????? ??????? (4:0)',
},
'caproic-acid' => {
	en => 'Caproic acid (6:0)',
	es => '�cido caproico (6:0)',
	pt => '�cido capr�ico (6:0)',
	fr => 'Acide capro�que (6:0)',
	he => '????? ??????? (6:0)',
},
'caprylic-acid' => {
	en => 'Caprylic acid (8:0)',
	es => '�cido capr�lico (8:0)',
	pt => '�cido capr�lico (8:0)',
	fr => 'Acide capro�que (8:0)',
	he => '????? ??????? (8:0)',
},
'capric-acid' => {
	en => 'Capric acid (10:0)',
	es => '�cido c�prico (10:0)',
	pt => '�cido c�prico (10:0)',
	fr => 'Acide caprique (10:0)',
	he => '????? ????? (10:0)',
},
'lauric-acid' => {
	en => 'Lauric acid (12:0)',
	es => '�cido l�urico (12:0)',
	pt => '�cido l�urico (12:0)',
	fr => 'Acide laurique (12:0)',
	he => '????? ?????? (12:0)',
},
'myristic-acid' => {
	en => 'Myristic acid (14:0)',
	es => '�cido mir�stico (14:0)',
	pt => '�cido mir�stico (14:0)',
	fr => 'Acide myristique (14:0)',
	he => '????? ???????? (14:0)',
},
'palmitic-acid' => {
	en => 'Palmitic acid (16:0)',
	es => '�cido palm�tico (16:0)',
	pt => '�cido palm�tico (16:0)',
	fr => 'Acide palmitique (16:0)',
	he => '????? ??????? (16:0)',
},
'stearic-acid' => {
	en => 'Stearic acid (18:0)',
	es => '�cido este�rico (18:0)',
	pt => '�cido este�rico (18:0)',
	fr => 'Acide st�arique (18:0)',
	he => '????? ?????? (18:0)',
},
'arachidic-acid' => {
	en => 'Arachidic acid (20:0)',
	es => '�cido araqu�dico (20:0)',
	pt => '�cido araqu�dico (20:0)',
	fr => 'Acide arachidique / acide eicosano�que (20:0)',
},
'behenic-acid' => {
	en => 'Behenic acid (22:0)',
	es => '�cido beh�nico (22:0)',
	pt => '�cido be�nico (22:0)',
	fr => 'Acide b�h�nique (22:0)',
	he => '????? ????? (22:0)',
},
'lignoceric-acid' => {
	en => 'Lignoceric acid (24:0)',
	es => '�cido lignoc�rico (24:0)',
	pt => '�cido lignoc�rico (24:0)',
	fr => 'Acide lignoc�rique (24:0)',
},
'cerotic-acid' => {
	en => 'Cerotic acid (26:0)',
	es => '�cido cer�tico (26:0)',
	pt => '�cido cer�tico (26:0)',
	fr => 'Acide c�rotique (26:0)',
},
'montanic-acid' => {
	en => 'Montanic acid (28:0)',
	es => '�cido mont�nico (28:0)',
	pt => '�cido mont�nico (28:0)',
	fr => 'Acide montanique (28:0)',
},
'melissic-acid' => {
	en => 'Melissic acid (30:0)',
	es => '�cido mel�sico (30:0)',
	pt => '�cido mel�ssico (30:0)',
	fr => 'Acide m�lissique (30:0)',
},
'monounsaturated-fat' => {
	fr => "Acides gras monoinsatur�s",
	en => "Monounsaturated fat",
	es => "Grasas monoinsaturadas",
	it=> "Acidi grassi monoinsaturi", 
	pt => "Gorduras monoinsaturadas",
	pt_pt => "�cidos gordos monoinsaturados",
	de => "Einfach unges�ttigte Fetts�uren",
	he => "???? ?? ???? ????",
	ga => "Monai-neamhsh�ithe�in saill",
	da => "Enkeltum�ttede fedtsyrer",
	el => "????a???esta ??pa??",
	fi => "Kertatyydyttym�tt�m�t rasvat",
	nl => "Enkelvoudig onverzadigde vetzuren",
	sv => "Enkelom�ttat fett",
	lv => "Mononepiesatinatas taukskabes",
	cs => "Mononenasycen� mastn� kyseliny",
	et => "Monok�llastumata rasvhapped",
	hu => "Egyszeresen tel�tetlen zs�rsavak",
	pl => "Kwasy tluszczowe jednonienasycone",
	sl => "Enkrat nenasicene ma�cobe",
	lt => "Mononesociosios riebalu rug�tys",
	mt => "Mono-insaturati xahmijiet",
	sk => "Mononenas�ten� mastn� kyseliny",
	ro => "Acizi gra?i mononesatura?i",
	bg => "?????????????? ?????? ????????",
},
'omega-9-fat' => {
	fr => "Acides gras Om�ga 9",
	en => "Omega 9 fatty acids",
	es => "�cidos grasos Omega 9",
	it=> "Acidi grassi Omega 9",
	pt => "�cidos Graxos �mega 9",
	pt_pt => "�cidos gordos �mega 9",
	de => "Omega-9-Fetts�uren",
	he => "????? 9",
},
'oleic-acid' => {
	en => 'Oleic acid (18:1 n-9)',
	es => '�cido oleico (18:1 n-9)',
	pt => '�cido oleico (18:1 n-9)',
	fr => 'Acide ol�ique (18:1 n-9)',
	he => '????? ??????',
},
'elaidic-acid' => {
	en => 'Elaidic acid (18:1 n-9)',
	es => '�cido ela�dico (18:1 n-9)',
	pt => '�cido ela�dico (18:1 n-9)',
	fr => 'Acide �la�dique (18:1 n-9)',
},
'gondoic-acid' => {
	en => 'Gondoic acid (20:1 n-9)',
	es => '�cido gondoico (20:1 n-9)',
	pt => '�cido gondoico (20:1 n-9)',
	fr => 'Acide gadol�ique (20:1 n-9)',
},
'mead-acid' => {
	en => 'Mead acid (20:3 n-9)',
	es => '�cido Mead (20:3 n-9)',
	pt => '�cido de Mead (20:3 n-9)',
	fr => 'Acide de Mead (20:3 n-9)',
},
'erucic-acid' => {
	en => 'Erucic acid (22:1 n-9)',
	es => '�cido er�cico (22:1 n-9)',
	pt => '�cido er�cico (22:1 n-9)',
	fr => 'Acide �rucique (22:1 n-9)',
},
'nervonic-acid' => {
	en => 'Nervonic acid (24:1 n-9)',
	es => '�cido nerv�nico (24:1 n-9)',
	pt => '�cido nerv�nico (24:1 n-9)',
	pt_pt => '�cido nerv�nico (24:1 n-9)',
	fr => 'Acide nervonique (24:1 n-9)',
},
'polyunsaturated-fat' => {
	fr => "Acides gras polyinsatur�s",
	en => "Polyunsaturated fat",
	es => "Grasas poliinsaturadas",
	it => "Acidi grassi polinsaturi",
	pt => "Gorduras poli-insaturadas",
	pt_pt => "�cidos gordos polinsaturados",
	de => "Mehrfach unges�ttigte Fetts�uren",
	he => "???? ?? ???? ????",
	ga => "Pola-neamhsh�ithe�in saill",
	da => "Flerum�ttede fedtsyrer",
	el => "????a???esta ??pa??",
	fi => "Monityydyttym�tt�m�t rasvat",
	nl => "Meervoudig onverzadigde vetzuren",
	sv => "Flerom�ttat fett",
	lv => "Polinepiesatinatas taukskabes",
	cs => "Polynenasycen� mastn� kyseliny",
	et => "Pol�k�llastumata rasvhapped",
	hu => "T�bbsz�r�sen tel�tetlen zs�rsavak",
	pl => "Kwasy tluszczowe wielonienasycone",
	sl => "Veckrat nenasicene ma�cobe",
	lt => "Polinesociosios riebalu rug�tys",
	mt => "Poli-insaturati xahmijiet",
	sk => "Polynenas�ten� mastn� kyseliny",
	ro => "Acizi gra?i polinesatura?i",
	bg => "?????????????? ?????? ????????",
},
'omega-3-fat' => {
	fr => "Acides gras Om�ga 3",
	en => "Omega 3 fatty acids",
	es => "�cidos grasos Omega 3",
	it=> "Acidi grassi Omega 3",
	pt => "�cidos graxos �mega 3",
	pt_pt => "�cidos gordos �mega 3",
	de => "Omega-3-Fetts�uren",
	he => "????? 3",
},
'alpha-linolenic-acid' => {
	en => 'Alpha-linolenic acid / ALA (18:3 n-3)',
	es => '�cido alfa-linol�nico / ALA (18:3 n-3)',
	pt => '�cido alfa-linol�nico / ALA (18:3 n-3)',
	pt_pt => '�cido alfa-linol�nico / ALA (18:3 n-3)',
	fr => 'Acide alpha-linol�nique / ALA (18:3 n-3)',
},
'eicosapentaenoic-acid' => {
	en => 'Eicosapentaenoic acid / EPA (20:5 n-3)',
	es => '�cido eicosapentaenoico / EPA (20:5 n-3)',
	pt => '�cido eicosapentaen�ico / EPA (20:5 n-3)',
	fr => 'Acide eicosapenta�no�que / EPA (20:5 n-3)',
},
'docosahexaenoic-acid' => {
	en => 'Docosahexaenoic acid / DHA (22:6 n-3)',
	es => '�cido docosahexaenoico / DHA (22:6 n-3)',
	pt => '�cido docosa-hexaen�ico / DHA (22:6 n-3)',
	fr => 'Acide docosahexa�no�que / DHA (22:6 n-3)',
},
'omega-6-fat' => {
	fr => "Acides gras Om�ga 6",
	en => "Omega 6 fatty acids",
	es => "�cidos grasos Omega 6",
	it=> "Acidi grassi Omega 6",
	pt => "�cidos Graxos �mega 6",
	pt_pt => "�cidos gordos �mega 6",
	de => "Omega-6-Fetts�uren",
	he => "????? 6",
},
'linoleic-acid' => {
	en => 'Linoleic acid / LA (18:2 n-6)',
	es => '�cido linoleico / LA (18:2 n-6)',
	pt => '�cido linoleico / LA (18:2 n-6)',
	fr => 'Acide linol�ique / LA (18:2 n-6)',
},
'arachidonic-acid' => {
	en => 'Arachidonic acid / AA / ARA (20:4 n-6)',
	es => '�cido araquid�nico / AA / ARA (20:4 n-6)',
	pt => '�cido araquid�nico / AA / ARA (20:4 n-6)',
	pt_pt => '�cido araquid�nico / AA / ARA (20:4 n-6)',
	fr => 'Acide arachidonique / AA / ARA (20:4 n-6)',
	he => '????? ????????? / AA / ARA (20:4 n-6)',
},
'gamma-linolenic-acid' => {
	en => 'Gamma-linolenic acid / GLA (18:3 n-6)',
	es => '�cido gamma-linol�nico / GLA (18:3 n-6)',
	pt => '�cido gama-linol�nico / GLA (18:3 n-6)',
	pt_pt => '�cido gama-linol�nico / GLA (18:3 n-6)',
	fr => 'Acide gamma-linol�nique / GLA (18:3 n-6)',
},
'dihomo-gamma-linolenic-acid' => {
	en => 'Dihomo-gamma-linolenic acid / DGLA (20:3 n-6)',
	es => '�cido dihomo-gamma-linol�nico / DGLA (20:3 n-6)',
	pt => '�cido dihomo-gama-linol�nico / DGLA (20:3 n-6)',
	pt_pt => '�cido dihomo-gama-linol�nico / DGLA (20:3 n-6)',
	fr => 'Acide dihomo-gamma-linol�nique / DGLA (20:3 n-6)',
},

'trans-fat' => {
	fr => "Acides gras trans",
	en => "Trans fat",
	es => "Grasas trans",
	it => "Acidi grassi trans",
	pt => "Gorduras trans",
	pt_pt => "�cidos gordos trans",
	de => "Trans-Fetts�uren",
	he => "???? ????? - ???? ???? ????",
},
cholesterol => {
	fr => "Cholest�rol",
	en => "Cholesterol",
	es => "Colesterol",
	ar=> "??????????? ",
	unit => "mg",
	it=> "Colesterolo",
	pt => "Colesterol",
	de => "Cholesterin",
	he => "????????",
},
fiber => {
	fr => "Fibres alimentaires",
	en => "Dietary fiber",
	es => "Fibra alimentaria",
	it=> "Fibra alimentare",
	pt => "Fibra alimentar",
	de => "Ballaststoffe",
	he => "????? ????????",
	ga => "Sn�ith�n",
	da => "Kostfibre",
	el => "ed?d?�e? ??e?",
	fi => "Ravintokuitu",
	nl => "Vezels",
	sv => "Fiber",
	lv => "�kiedrvielas",
	cs => "Vl�knina",
	et => "Kiudained",
	hu => "Rost",
	pl => "Blonnik",
	sl => "Prehranskih vlaknin",
	lt => "Skaiduliniu med�iagu",
	mt => "Fibra alimentari",
	sk => "Vl�knina",
	bg => "????????",
},
sodium => {
	fr => "Sodium",
	en => "Sodium",
	es => "Sodio",
	ar => "????????",
	it => "Sodio",
	pt => "S�dio",
	de => "Natrium",
	he => "????",
},
salt => {
	fr => "Sel",
	en => "Salt",
	es => "Sal",
	pt => "Sal",
	he => "???",
	de => "Salz",
	ga => "Salann",
	da => "Salt",
	el => "???t?",
	fi => "Suola",
	it => "Sale",
	nl => "Zout",
	lv => "Sals",
	cs => "Sul",
	et => "Sool",
	pl => "S�l",
	sl => "Sol",
	lt => "Druska",
	mt => "Melh",
	sk => "Sol",
	ro => "Sare",
	bg => "???",
},
'salt-equivalent' => {
	fr => "Equivalent en sel",
	en => "Salt equivalent",
	es => "Equivalente en sal",
	pt => "Equivalente em sal",
	he => "?????? ???",
},
'#vitamins' => {
	fr => "Vitamines",
	en => "Vitamin",
	es => "Vitaminas",
	ar => "???????????",
	it => "Vitamine",
	pt => "Vitaminas",
	de => "Vitamine",
	he => "????????",
	ga => "Vitim�n",
	el => "??ta�???",
	fi => "vitamiini",
	nl => "Vitamine",
	lv => "vitamins",
	et => "Vitamiin",
	hu => "vitamin",
	pl => "Witamina",
	lt => "Vitaminas",
	mt => "Vitamina",
	sk => "Vitam�n",
	ro => "Vitamina",
	bg => "???????",
},
'vitamin-a' => {
	fr => "Vitamine A (r�tinol)",
	en => "Vitamin A",
	es => "Vitamina A (Retinol)",
	unit => "�g",
	dv => "1500",
	it => "Vitamina A (Retinolo)",
	pt => "Vitamina A",
	de => "Vitamin A (Retinol)",
	he => "?????? A (??????)",
	ga => "Vitim�n A",
	el => "??ta�??? A",
	fi => "A-vitamiini",
	nl => "Vitamine A",
	lv => "A vitamins",
	et => "Vitamiin A",
	hu => "A-vitamin",
	pl => "Witamina A",
	lt => "Vitaminas A",
	mt => "Vitamina A",
	sk => "Vitam�n A",
	ro => "Vitamina A",
	bg => "??????? A",
},
'vitamin-d' => {
	fr => "Vitamine D / D3 (chol�calcif�rol)",
	en => "Vitamin D",
	es => "Vitamina D",
	unit => "�g",
	dv => "40",
	it => "Vitamina D (colecalciferolo)",
	pt => "Vitamina D",
	de => "Vitamin D / D3 (Cholecalciferol)",
	he => "?????? D",
	ga => "Vitim�n D",
	el => "??ta�??? D",
	fi => "D-vitamiini",
	nl => "Vitamine D",
	lv => "D vitamins",
	et => "Vitamiin D",
	hu => "D-vitamin",
	pl => "Witamina D",
	lt => "Vitaminas D",
	mt => "Vitamina D",
	sk => "Vitam�n D",
	ro => "Vitamina D",
	bg => "??????? D",
},
'vitamin-e' => {
	fr => "Vitamine E (tocoph�rol)",
	en => "Vitamin E",
	es => "Vitamina E (a-tocoferol)",
	unit => "mg",
	dv => "20",
	it => "Vitamina E (Alfa-tocoferolo)",
	pt => "Vitamina E",
	de => "Vitamin E (Tocopherol)",
	he => "?????? E (???? ????????)",
	ga => "Vitim�n E",
	el => "??ta�??? E",
	fi => "E-vitamiini",
	nl => "Vitamine E",
	lv => "E vitamins",
	et => "Vitamiin E",
	hu => "E-vitamin",
	pl => "Witamina E",
	lt => "Vitaminas E",
	mt => "Vitamina E",
	sk => "Vitam�n E",
	ro => "Vitamina E",
	bg => "??????? E",
},
'vitamin-k' => {
	fr => "Vitamine K",
	en => "Vitamin K",
	es => "Vitamina K",
	unit => "�g",
	dv => "80",
	it => "Vitamina K",
	pt => "Vitamina K",
	de => "Vitamin K",
	he => "?????? K (??????)",
	ga => "Vitim�n K",
	el => "??ta�??? K",
	fi => "K-vitamiini",
	nl => "Vitamine K",
	lv => "K vitamins",
	et => "Vitamiin K",
	hu => "K-vitamin",
	pl => "Witamina K",
	lt => "Vitaminas K",
	mt => "Vitamina K",
	sk => "Vitam�n K",
	ro => "Vitamina K",
	bg => "??????? K",
},
'vitamin-c' => {
	fr => "Vitamine C (acide ascorbique)",
	en => "Vitamin C (ascorbic acid)",
	es => "Vitamina C (�cido asc�rbico)",
	unit => "mg",
	dv => "60",
	it => "Vitamina C (Acido ascorbico)",
	pt => "Vitamina C",
	de => "Vitamin C (Ascorbins�ure)",
	he => "?????? C (????? ????????)",
	ga => "Vitim�n C",
	el => "??ta�??? C",
	fi => "C-vitamiini",
	nl => "Vitamine C",
	lv => "C vitamins",
	et => "Vitamiin C",
	hu => "C-vitamin",
	pl => "Witamina C",
	lt => "Vitaminas C",
	mt => "Vitamina C",
	sk => "Vitam�n C",
	ro => "Vitamina C",
	bg => "??????? C",
},
'vitamin-b1' => {
	fr => "Vitamine B1 (Thiamine)",
	en => "Vitamin B1 (Thiamin)",
	es => "Vitamina B1 (Tiamina)",
	unit => "mg",
	dv => "1.5",
	it => "Vitamina B1 (tiamina)",
	pt => "Vitamina B1 (Tiamina)",
	de => "Vitamin B1 (Thiamin)",
	he => "?????? B1 (??????)",
	ga => "Vitim�n B1 (Tiaim�n)",
	el => "??ta�??? B1 (Te?a�???)",
	fi => "B1-vitamiini (Tiamiini)",
	nl => "Vitamine B1 (Thiamine)",
	lv => "B1 vitamins (Tiamins)",
	et => "Vitamiin B1 (Tiamiin)",
	hu => "B1-vitamin (Tiamin)",
	pl => "Witamina B1 (Tiamina)",
	sl => "Vitamin B1 (Tiamin)",
	lt => "Vitaminas B1 (Tiaminas)",
	mt => "Vitamina B1 (Tiamina)",
	sk => "Vitam�n B1",
	ro => "Vitamina B1 (Tiamina)",
	bg => "??????? B1 (??????)",
},
'vitamin-b2' => {
	fr => "Vitamine B2 (Riboflavine)",
	en => "Vitamin B2 (Riboflavin)",
	es => "Vitamina B2 (Riboflavina)",
	unit => "mg",
	dv => "1.7",
	it => "Vitamina B2 (Riboflavina)",
	pt => "Vitamina B2 (Riboflavina)",
	de => "Vitamin B2 (Riboflavin)",
	he => "?????? B2 (?????????)",
	ga => "Vitim�n B2 (Ribeaflaivin)",
	el => "??ta�??? B2 (??�?f?a�???)",
	fi => "B2-vitamiini (Riboflaviini)",
	nl => "Vitamine B2 (Riboflavine)",
	lv => "B2 vitamins (Riboflavins)",
	et => "Vitamiin B2 (Riboflaviin)",
	hu => "B2-vitamin (Riboflavin)",
	pl => "Witamina B2 (Ryboflawina)",
	lt => "Vitaminas B2 (Riboflavinas)",
	mt => "Vitamina B2 (Riboflavina)",
	sk => "Vitam�n B2",
	ro => "Vitamina B2 (Riboflavina)",
	bg => "??????? B2 (??????????)",
},
'vitamin-pp' => {
	fr => "Vitamine B3 / Vitamine PP (Niacine)",
	en => "Vitamin B3 / Vitamin PP (Niacin)",
	es => "Vitamina B3 / Vitamina PP (Niacina)",
	unit => "mg",
	dv => "20",
	it => "Vitamina B3 / Vitamina PP (Niacina)",
	pt => "Vitamina B3 / Vitamina PP (Niacina)",
	de => "Vitamin B3 / Vitamin PP (Niacin)",
	he => "?????? B3 /?????? PP (?????? ?? ????? ?????????)",
	ga => "Niaicin",
	el => "??as???",
	fi => "Niasiini",
	nl => "Niacine",
	lv => "Niacins",
	et => "Niatsiin",
	pl => "Niacyna",
	lt => "Niacinas",
	mt => "Niacina",
	sk => "Niac�n",
	ro => "Niacina",
	bg => "??????",
},	
'vitamin-b6' => {
	fr => "Vitamine B6 (Pyridoxine)",
	en => "Vitamin B6 (Pyridoxin)",
	es => "Vitamina B6 (Piridoxina)",
	unit => "mg",
	dv => "2",
	it => "Vitamina B6 (piridoxina)",
	pt => "Vitamina B6 (Piridoxina)",
	de => "Vitamin B6 (Pyridoxin)",
	he => "?????? B6 (??????????)",
	ga => "Vitim�n B6",
	el => "??ta�??? B6",
	fi => "B6-vitamiini",
	nl => "Vitamine B6",
	lv => "B6 vitamins",
	et => "Vitamiin B6",
	hu => "B6-vitamin",
	pl => "Witamina B6",
	lt => "Vitaminas B6",
	sk => "Vitam�n B6",
	ro => "Vitamina B6",
	bg => "??????? B6",
},
'vitamin-b9' => {
	fr => "Vitamine B9 (Acide folique)",
	en => "Vitamin B9 (Folic acid)",
	es => "Vitamina B9 (�cido f�lico)",
	unit => "�g",
	dv => "400",
	it => "Vitamina B9 (Acido folico)",
	pt => "Vitamina B9 (�cido F�lico)",
	de => "Vitamin B9 (Fols�ure)",
	he => "?????? B9 (????? ?????)",
	ga => "Vitim�n B9 (Aig�ad f�lach)",
	el => "??ta�??? B9 (F????? ???)",
	fi => "B9-vitamiini (Foolihappo)",
	nl => "Vitamine B9 (Foliumzuur)",
	lv => "B9 vitamins (Folijskabe)",
	et => "Vitamiin B9 (Foolhape)",
	hu => "B9-vitamin (Folsav)",
	pl => "Witamina B9 (Kwas foliowy)",
	lt => "Vitaminas B9 (Folio rug�tis)",
	sk => "Vitam�n B9 (Kyselina listov�)",
	ro => "Vitamina B9 (Acid folic)",
	bg => "??????? B9 (??????? ????????)",
},
'vitamin-b12' => {
	fr => "Vitamine B12 (cobalamine)",
	en => "Vitamin B12 (cobalamin)",
	es => "Vitamina B12 (Cianocobalamina)",
	unit => "�g",
	dv => "6",
	it => "Vitamina B12 (Cobalamina)",
	pt => "Vitamina B12 (Cobalamina)",
	de => "Vitamin B12 (Cobalamin)",
	he => "?????? B12 (?????????????)",
	ga => "Vitim�n B12",
	el => "??ta�??? B12",
	fi => "B12-vitamiini",
	nl => "Vitamine B12",
	lv => "B12 vitamins",
	et => "Vitamiin B12",
	hu => "B12-vitamin",
	pl => "Witamina B12",
	lt => "Vitaminas B12",
	sk => "Vitam�n B12",
	ro => "Vitamina B12",
	bg => "??????? ?12",
},
'biotin' => {
	fr => "Biotine (Vitamine B8 / B7 / H)",
	en => "Biotin",
	es => "Vitamina B7 (Biotina)",
	unit => "�g",
	dv => "300",
	it => "Vitamina B8/B7/H/I (Biotina)",
	pt => "Vitamina B7 (Biotina)",
	de => "Biotin (Vitamin B8 / B7 / H)",
	he => "?????? (?????? B7)",
	ga => "Bitin",
	el => "???t???",
	fi => "Biotiini",
	nl => "Biotine",
	lv => "Biotins",
	et => "Biotiin",
	pl => "Biotyna",
	lt => "Biotinas",
	sk => "Biot�n",
	ro => "Biotina",
	bg => "??????",
},	
'pantothenic-acid' => {
	fr => "Acide pantoth�nique (Vitamine B5)",
	en => "Panthotenic acid (Vitamin B5)",
	es => "Vitamina B5 (�cido pantot�nico)",
	unit => "mg",
	dv => "10",
	it => "Vitamina B5 (Acido pantotenico)",
	pt => "Vitamina B5 (�cido Pantot�nico)",
	pt_pt => "Vitamina B5 (�cido pantot�nico)",
	de => "Pantothens�ure (Vitamin B5)",
	he => "????? ???????? (?????? B5)",
	ga => "Aig�ad pantait�ineach",
	da => "Pantothensyre",
	el => "?a?t??e???? ???",
	fi => "Pantoteenihappo",
	nl => "Pantotheenzuur",
	sv => "Pantotensyra",
	lv => "Pantotenskabe",
	cs => "Kyselina pantothenov�",
	et => "Pantoteenhape",
	hu => "Pantot�nsav",
	pl => "Kwas pantotenowy",
	sl => "Pantotenska kislina",
	lt => "Pantoteno rug�tis",
	mt => "Acidu Pantoteniku",
	sk => "Kyselina pantotenov�",
	ro => "Acid pantotenic",
	bg => "??????????? ????????",
},	
'#minerals' => {
	fr => "Sels min�raux",
	en => "Minerals",
	es => "Sales minerales",
	it => "Sali minerali",
	pt => "Sais Minerais",
	de => "Minerals",
	he => "???????",
},
potassium => {
	fr => "Potassium",
	en => "Potassium",
	es => "Potasio",
	unit => "mg",
	it => "Potassio",
	pt => "Pot�ssio",
	de => "Kalium",
	he => "?????",
	ga => "Potaisiam",
	da => "Kalium",
	el => "?????",
	fi => "Kalium",
	nl => "Kalium",
	sv => "Kalium",
	lv => "Kalijs",
	cs => "Drasl�k",
	et => "Kaaliumv",
	hu => "K�lium",
	pl => "Potas",
	sl => "Kalij",
	lt => "Kalis",
	mt => "Potassju",
	sk => "Drasl�k",
	ro => "Potasiu",
	bg => "?????",
},
bicarbonate => {
	fr => "Bicarbonate",
	en => "Bicarbonate",
	es => "Bicarbonato",
	unit => "mg",
	it => "Bicarbonato",
	pt => "Bicarbonato",
	de => "Bikarbonat",
	he => "???????? (???? ?????)",
},
chloride => {
	fr => "Chlorure",
	en => "Chloride",
	es => "Cloro",
	unit => "mg",
	dv => "3400",
	it => "Cloruro",
	pt => "Cloreto",
	de => "Chlor",
	he => "??????",
	ga => "Cl�ir�d",
	da => "Chlorid",
	el => "??????",
	fi => "Kloridi",
	sv => "Klorid",
	lv => "Hloridsv",
	cs => "Chlor",
	et => "Kloriid",
	hu => "Klorid",
	pl => "Chlor",
	sl => "Klorid",
	lt => "Chloridas",
	mt => "Kloridu",
	sk => "Chlorid",
	ro => "Clorura",
	bg => "??????",
},
silica => {
	fr => "Silice",
	en => "Silica",
	es => "S�lice",
	unit => "mg",
	it => "Silicio",
	pt => "S�lica",
	de => "Kieselerde",
	he => "???? ????????",
},
calcium => {
	fr => "Calcium",
	en => "Calcium",
	es => "Calcio",
	ar => "?????????",
	unit => "mg",
	dv => "1000",
	it => "Calcio",
	pt => "C�lcio",
	de => "Kalzium",
	he => "????",
	ga => "Cailciam",
	el => "?s�?st??",
	fi => "Kalsium",
	sv => "Kalcium",
	lv => "Kalcijs",
	cs => "V�pn�k",
	et => "Kaltsium",
	hu => "Kalcium",
	pl => "Wapn",
	sl => "Kalcij",
	lt => "Kalcis",
	mt => "Kalcju",
	sk => "V�pnik",
	ro => "Calciu",
	bg => "??????",
},
phosphorus => {
	fr => "Phosphore",
	en => "Phosphorus",
	es => "F�sforo",
	ar => "????????",
	unit => "mg",
	dv => "1000",
	it => "Fosforo",
	pt => "F�sforo",
	de => "Phosphor",
	he => "????",
	ga => "Fosfar",
	da => "Phosphor",
	el => "F?sf????",
	fi => "Fosfori",
	nl => "Fosfor",
	sv => "Fosfor",
	lv => "Fosfors",
	cs => "Fosfor",
	et => "Fosfor",
	hu => "Foszfor",
	pl => "Fosfor",
	sl => "Fosfor",
	lt => "Fosforas",
	mt => "Fosfru",
	sk => "Fosfor",
	ro => "Fosfor",
	bg => "??????",
},
iron => {
	fr => "Fer",
	en => "Iron",
	es => "Hierro",
	unit => "mg",
	dv => "18",
	it => "Ferro",
	pt => "Ferro",
	de => "Eisen",
	he => "????",
	ga => "Iarann",
	da => "Jern",
	el => "S?d????",
	fi => "Rauta",
	nl => "IJzer",
	sv => "J�rn",
	lv => "Dzelzs",
	cs => "�elezo",
	et => "Raud",
	hu => "Vas",
	pl => "Zelazo",
	sl => "�elezo",
	lt => "Gele�is",
	mt => "Kalcju",
	sk => "�elezo",
	ro => "Fier",
	bg => "??????",
},
magnesium => {
	fr => "Magn�sium",
	en => "Magnesium",
	es => "Magnesio",
	unit => "mg",
	dv => "400",
	it => "Magnesio",
	pt => "Magn�sio",
	de => "Magnesium",
	he => "???????",
	ga => "Maign�isiam",
	el => "?a???s??",
	lv => "Magnijs",
	cs => "Horc�k",
	et => "Magneesium",
	hu => "Magn�zium",
	pl => "Magnez",
	sl => "Magnezij",
	lt => "Magnis",
	mt => "Manjesju",
	sk => "Horc�k",
	ro => "Magneziu",
	bg => "????????",
},
zinc => {
	fr => "Zinc",
	en => "Zinc",
	es => "Zinc",
	unit => "mg",
	dv => "15",
	it => "Zinco",
	pt => "Zinco",
	de => "Zink",
	he => "???",
	ga => "Sinc",
	da => "Zink",
	el => "?e?d???????",
	fi => "Sinkki",
	nl => "Zink",
	sv => "Zink",
	lv => "Cinks",
	cs => "Zinek",
	et => "Tsink",
	hu => "Cink",
	pl => "Cynk",
	sl => "Cink",
	lt => "Cinkas",
	mt => "Zingu",
	sk => "Zinok",
	bg => "????",
},
copper => {
	fr => "Cuivre",
	en => "Copper",
	es => "Cobre",
	unit => "mg",
	dv => "2",
	it => "Rame",
	pt => "Cobre",
	de => "Kupfer",
	he => "?????",
	ga => "Copar",
	da => "Kobber",
	el => "?a????",
	fi => "Kupari",
	nl => "Koper",
	sv => "Koppar",
	lv => "Var�",
	cs => "Med",
	et => "Vask",
	hu => "R�z",
	pl => "Miedz",
	sl => "Baker",
	lt => "Varis",
	mt => "Ram",
	sk => "Med",
	ro => "Cupru",
	bg => "???",
},
manganese => {
	fr => "Mangan�se",
	en => "Manganese",
	es => "Manganeso",
	unit => "mg",
	dv => "2",
	it => "Manganese",
	pt => "Mangan�s",
	de => "Mangan",
	he => "????",
	ga => "Mangain�is",
	da => "Mangan",
	el => "?a??????",
	fi => "Mangaani",
	nl => "Mangaan",
	sv => "Mangan",
	lv => "Mangans",
	cs => "Mangan",
	et => "Mangaan",
	hu => "Mang�n",
	pl => "Mangan",
	sl => "Mangan",
	lt => "Manganas",
	mt => "Manganis",
	sk => "Mang�n",
	ro => "Mangan",
	bg => "??????",
},
fluoride => {
	fr => "Fluorure",
	en => "Fluoride",
	es => "Fl�or",
	unit => "mg",
	it => "Fluoro",
	pt => "Fluoreto",
	de => "Fluor",
	he => "????????",
	ga => "Fluair�d",
	da => "Fluorid",
	el => "F?????",
	fi => "Fluoridi",
	sv => "Fluorid",
	lv => "Fluorids",
	cs => "Fluor",
	et => "Fluoriid",
	hu => "Fluor",
	pl => "Fluor",
	sl => "Fluorid",
	lt => "Fluoridas",
	mt => "Floridu",
	sk => "Fluorid",
	ro => "Fluorura",
	bg => "???????",
},
selenium => {
	fr => "S�l�nium",
	en => "Selenium",
	es => "Selenio",
	unit => "�g",
	dv => "70",
	it => "Selenio",
	pt => "Sel�nio",
	pt_pt => "Sel�nio",
	de => "Selen",
	he => "??????",
	ga => "Seil�iniam",
	da => "Selen",
	el => "Se?????",
	fi => "Seleeni",
	nl => "Seleen",
	sv => "Selen",
	lv => "Selens",
	cs => "Selen",
	et => "Seleen",
	hu => "Szel�n",
	pl => "Selen",
	sl => "Selen",
	lt => "Selenas",
	mt => "Selenju",
	sk => "Sel�n",
	ro => "Seleniu",
	bg => "?????",
},
chromium => {
	fr => "Chrome",
	en => "Chromium",
	es => "Cromo",
	unit => "�g",
	dv => "120",
	it => "Cromo",
	pt => "Cromo",
	pt_pt => "Cr�mio",
	de => "Chrom",
	he => "????",
	ga => "Cr�imiam",
	da => "Chrom",
	el => "???�??",
	fi => "Kromi",
	nl => "Chroom",
	sv => "Krom",
	lv => "Hroms",
	cs => "Chrom",
	et => "Kroom",
	hu => "Kr�m",
	pl => "Chrom",
	sl => "Krom",
	lt => "Chromas",
	mt => "Kromju",
	sk => "Chr�m",
	ro => "Crom",
	bg => "????",
},
molybdenum => {
	fr => "Molybd�ne",
	en => "Molybdenum",
	es => "Molibdeno",
	unit => "�g",
	dv => "75",
	it => "Molibdeno",
	pt => "Molibd�nio",
	pt_pt => "Molibd�nio",
	de => "Molybd�n",
	he => "???????",
	ga => "Molaibd�ineam",
	da => "Molybd�n",
	el => "????�da????",
	fi => "Molybdeeni",
	nl => "Molybdeen",
	sv => "Molybden",
	lv => "Molibdens",
	cs => "Molybden",
	et => "Mol�bdeen",
	hu => "Molibd�n",
	pl => "Molibden",
	sl => "Molibden",
	lt => "Molibdenas",
	mt => "Molibdenum",
	sk => "Molybd�n",
	ro => "Molibden",
	bg => "????????",
},
iodine => {
	fr => "Iode",
	en => "Iodine",
	es => "Yodo",
	unit => "�g",
	dv => "150",
	it=> "Iodio",
	pt => "Iodo",
	de => "Jod",
	he => "???",
	ga => "Iaid�n",
	da => "Jod",
	el => "??d??",
	fi => "Jodi",
	nl => "Jood",
	sv => "Jod",
	lv => "Jods",
	cs => "J�d",
	et => "Jood",
	hu => "J�d",
	pl => "Jod",
	sl => "Jod",
	lt => "Jodas",
	mt => "Jodju",
	sk => "J�d",
	ro => "Iod",
	bg => "???",
},
caffeine => {
	fr => 'Caf�ine / Th�ine',
	en => 'Caffeine',
},
taurine => {
	fr => 'Taurine',
	en => 'Taurine',
},

ph => {
	en => "pH",
	unit => '',
},

"carbon-footprint" => {
	fr => "Empreinte carbone / �missions de CO2",
	en => "Carbon footprint / CO2 emissions",
	es => "Huella de carbono / Emisiones de CO2",
	unit => 'g',
	it=> "Emissioni di CO2 (impronta climatica)",
	pt => "Pegada de carbono / Emiss�es de CO<sub>2</sub>",
	de => "Carbon Footprint / CO2-Emissionen",
	he => "????? ??? ?????? / ????? ???? ????????",
},
"fruits-vegetables-nuts" => {
	en => "Fruits, vegetables and nuts (minimum)",
	fr => "Fruits, l�gumes et noix (minimum)",
	unit => '%',
},
"nutrition-score-uk" => {
	en => "Nutrition score - UK",
	unit => '',
},
"nutrition-score-fr" => {
	fr => "Score nutritionnel exp�rimental - France",
	en => "Experimental nutrition score",
	unit => '',
},

);

1;
