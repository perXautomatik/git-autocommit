datapoint, complexionClause


example.json
{
"url":"ww.wss";
"title:"furg";
"tags":["cow","boar"];
}

"ww.ss","1:url/1"
"furg","1:title/2"
"cow","1:tags[/3/1"
"boar","1:tags[/3/2"


where 
digit signs depth * 1: could be omitted
:txt signs variablename * txt is optional
:txt[ signs variable of array type 
/digit signs order * optional
unless variable typ is self evident by value, 
set indicator after order flag

benefits:
* simple non structured to structured transformation
    by simply omitting poistion flaggs, and to then use a copy of the complexionClause most suitable
    for each datapoint.
    the process would consist of a "join" or a "for each if else"  statement 

    positionflags could of course be included afterwards to retain order if nesessary, 
* simple datapoint filtering and retrival using non json avear arythmics.

con:

* worse structured to structured transfomration
  each row is isolaed from the rest of the structure and can't tell whom it is related to in case this would be needed.
* worse overview of complete structure
  one would need to rebuild the whole json before asking for which variablenames or datapoint types.

