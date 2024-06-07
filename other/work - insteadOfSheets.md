--ressultatet vi vill ha �r formatet
--BETECKNING,NAMN,NAMN2,�rendenr, c_o,ADRESS,POSTORT where adress is not more than 33 char long
-- if adress is null, on one of receptant, take the non null val
--ANDEL, POSTORT, POSTNUMMER, ADRESS, NAMN, BETECKNING, �rndenr,

/*select POSTORT,
       POSTNUMMER,
       ADRESS,
       NAMN,
       Namn2,
       BETECKNING,
       qz.�rndenr,
       Fastighet
from qz
         right outer join tempExcel.dbo.Query4 on qz.�rndenr = tempExcel.dbo.Query4.�rndenr
where ADRESS is null*/