
karlstads
	från början utgick jag från en design centrerad runt fil inläsningen, och tolkade upgiftsbeskrivningens tabell hur detta borde gå till.

efter upgift 6 och online hämtning kändes det mer naturligt att utgå från strukturen som redan gavs i xmlfilen som hämtades online
detta föränklade gui designen avsevärt.

svårigheter som upstod under designprocessen vart framförallt logiska under upgift 5, detta då modellen jag föreställde mig inte inte ränknade med 
presentation av denna data. 
skulle säga att detta är ett perfect exempel på hur en model bara är en modell tills den tästats och modellen var inte tillräcklig.

färeställde mig en hash generering och tolknings funktionallitet för att omtolka objekten men i samband med upgift 6 valde jag att förenkla tillvägagängsättet
något som jag stött på i mina egna eskapader i framför allt javaprogrammering är hur krongligt det kan bli att läsa och jämföra strängar, ville 
därför förenkla jämförelseprocessen med en en tydlig hashsekvens, men när vi istället ser csvn som en mellanlagrings station snarare än en lång lagringsplats känndes det mindre 
nödvändigt att all info skulle läsas in och jämföras mot registret.

den slutgiltiga csvstrukturen blev ganska likt en intern hashtabell, där id är egentligen det enda absolut nödvändiga,
därefter fylles endast nya fält i efter som att förändringar görs, vilket minimerar inläsning och jämnförelse.


	