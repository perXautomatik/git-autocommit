


############### New sheet ###############
/*
oneNote:
idea
kan man synka historik från chrome till firefox?, 
chromeapiet kanske kan tillåta extrahering och komprimering av mest relevant historik, och detta kan då kanske delas med firefox.
med hjälp av egensatta komprimeringsregler, skulle man säkerligen kunna spara en del av kvantiteten av data som änns historik utgör.
undrar hur chrome och firefox historikdatabaser är stukturerade, det hade med fördel varit en rellationell databas med endast sparade ressultat då desa skiljer sig från tidigare hämtningar


OneNote:
Parrenting ideas
For a yet to be child
you are eather born with or without the gift of curiousity
and the calling to teach
everyone doesn't want to listen, neather is everyone capable of explaining, be careful where to teach, but be always obserwant where there is curiosity

OneNote:
Parrenting ideas
For a yet to be child
our child, atleast the first unless there will be twinns, should be accompanied by a dog, sure lonelyness is something i survided, but i did have my brother, and the pet would be a suitable
companion for the child regardless if we decide to have more.

vikten att stimulera sina barn, oavsätt der specialitet, eller intresse, det handlar inte om att älska allt skit de gör, men att observera deras intressen och att ständigt föra dialog med dessa 
vida deras verktyg känns tillräckliga, om deras teckniska kunskaper är tillräckliga, om de har intresse av att lära sig mer teckniker, säkerligen så att endast formella frågor om detta inte r tillräckligt
då ett ej utvecklat sinne säkerligen har en turbulent informationsström, och antagligen glömmer enns förslag eller tillfrågningar, så man bör föra protocoll på de som föreslagits och visats, kanske 
att vissa saker bör uprepas eller introdiceras på annat sätt.

the difference between sience and dicking arround; is sientists write down the ressults.
värt att lära de sina, att observera och reflectera är en dygd ett skarpt sinne bör bemästra, anteckningar som sedan kan gås igenom kan sedan pratas om runt måltider.

kontinuitet är extremt viktigt, våran dåliga struktur måste förbättras, då barnen riskerar att utveckla diabetes eller fettma på grund av iregulära måltidstidpunkter

hur motiverar man barn att äta sina grönsaker? ett sätt kan att helt enkelt behandla grönsakerna som om de var precis lika delikata som allt annat, alternativt blanda in grönsaker i de absolut första
måltiderna, typ färshbiffar med spenat, eller blomkål, barn tycks reagera starkt på vissa bittersmaker, och gröna grönsaker kan vara avskräckande, även de som tes obittra för en van vuxen.

hur undviker man för dominant sockerbehov, hur förespråkar man torkad frukt och nötter?
om man låter naturgodis vara tillgängligt, men sockrade produkter särskilt lyx, kan åtminstonne överdriven konsumtion regleras, 
problemet är att om socker helt utesluts, kommer vänners godisskålar vara allt för inbjudande och istället för att varna, slussar barnen direkt in ett sockerbehov.
om korta kolhydrater finns tillräckligt, men endast under vissa timmar, inte för tidigt innan midag, eller vid frukost och allt för sent efter midan kan nog spontant sockerbehov begränsas.
ardunostyrda sockerskydd skulle defenitivt kunna begränsa tillgången, om barnet lär sig att kringgå systemet skall det snarare belönas än förbannas då det tyder på utveckling.



*/

function myFunctionX() {
   
  var xCord = 1;
  var yCord = 2;
  var ColumnBredd = 1;
  
  var ss = SpreadsheetApp.getActiveSpreadsheet();
  var sheet = ss.getSheets()[0];
  var active = sheet.getRange("A:A");
  var len = active.getLastRow();
  // The size of the two-dimensional array must match the size of the range.
  
  var matrix = [];
  var j = 0;
for(var i=0; i<len; i++) {
   
  if(sheet.getRange(1+i, 1).getValue() !== ""){
    matrix[j] = [];
        matrix[j++][0] = sheet.getRange(1+i, 1).getValue();
  }
}
  matrix.sort()
  
  var range = sheet.getRange(xCord,yCord,j,ColumnBredd);
  range.setValues(matrix);   
}


function regex(var input,var regex) as string 
{
}

function textParser(var input) as map / json?
{
//url:url\url.url_url | text text-text.text,text
// the parser should take certain obeus pattern in consideration, like any text after poetrade is not worth dividing etc
  urlExtractor
  
  // urls could be checked, opened in archive, and waiting with a popup before continuing
 linkChecker

//do we truely need the whole url? 
  //we can filter comon text such as www, http, com, org, (maybe se) and usually any url snippet after the last dot
  // maybe it's possible to interpet the whole urlstring as a requestheader
urlJson //{eventual pretext} (www,http) (.) {main body} (.) {ending/eventual secundary body} (com, org, se, kontakt) (|) {divider} {textbody} (containing lots of non rellevant words, like if, else, or when to by etc etc)
javascriptUrlParser //could we use a javascript url parser to get relevant content of the url? 

 textExtractor
  // do we truely need every word of the text?
onlineApis //could we use online apis to filter irrelevant phrases
// ressulting text probably serves best as an array, priority or order seems a secondary consern in this basic stage
  
}

function urlExtractor(var input) as map
{}

function textExtractor(var input) as array
{}

function linkChecker(var input) as string
{}

 function ressultProcessor(var input)
 {
  
  
}

