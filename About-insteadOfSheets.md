--ressultatet vi vill ha �r formatet
--BETECKNING,NAMN,NAMN2,�rendenr, c_o,ADRESS,POSTORT where adress is not more than 33 char long
-- if adress is null, on one of receptant, take the non null val
--ANDEL, POSTORT, POSTNUMMER, ADRESS, NAMN, BETECKNING, �rndenr,

   /* --Check for existance
anv�nd geofir databas ist�llet f�r att importera csv fil, enda csvn skall ha �r �rendenr och fastighet.


***** Script for SelectTopNRows command from SSMS  *****/
/*exec sp_addlinkedserver @server = GISDATA*/

/*SELECT hidev.FNR,hidev.BETECKNING,
       [ANDEL],[AGTYP],[NAMN],[NAMN_OMV],[TNMARK],[FNAMN],[MNAMN],[ENAMN],[KORTNAMN],[KORTNAMN_OMV],[FAL_CO],[FAL_UTADR1],[FAL_UTADR2],[FAL_POSTNR],[FAL_POSTORT],[SAL_CO],[SAL_UTADR1],[SAL_UTADR2],[SAL_POSTNR],[SAL_POSTORT],[UA_UTADR1],[UA_UTADR2],[UA_UTADR3],[UA_UTADR4],[UA_LAND]into OrginalAndGeofir FROM [GISDATA].sde_geofir_gotland.gng.FA_TAXERINGAGARE_V2 AS tax LEFT JOIN (SELECT fa.FNR, fa.BETECKNING FROM Hideviken left JOIN GISDATA.sde_geofir_gotland.gng.FA_FASTIGHET AS fa ON _FASTIGHET_ = fa.BETECKNING where fa.BETECKNING is not null ) AS hidev ON hidev.FNR = tax.FNR where hidev.BETECKNING is not null;
*/
--drop table dbo.#TempWithIdentity

--create temp table to add an identity column
--create table dbo.#TempWithIdentity(i int not null identity(1,1) primary key,POSTORT varchar(255), POSTNUMMER int, ADRESS varchar(255), NAMN varchar(255), andel varchar(255), BETECKNING varchar(255), �rndenr varchar(255))
--populate the temporary table
--insert into dbo.#TempWithIdentity(ANDEL, POSTORT, POSTNUMMER, adress, NAMN, BETECKNING, �rndenr) select ANDEL, POSTORT, POSTNUMMER, adress, NAMN, BETECKNING, �rndenr from
  --  (select ANDEL, POSTORT, POSTNUMMER, adress, NAMN, BETECKNING, �rndenr from
  --OrginalAndGeofir
   -- qvc union select ANDEL, POSTORT, POSTNUMMER, ADRESS, NAMN, BETECKNING, �rndenr from (select POSTORT, POSTNUMMER, ADRESS, NAMN, andel, �rendeNr4�rs2019.Fastighet as BETECKNING, �rndenr from tempExcel.dbo.�rsP�m2019Compl join tempExcel.dbo.�rendeNr4�rs2019 on �rendeNr4�rs2019.Fastighet = �rsP�m2019Compl.Fastighet) as asdas)
    --as sdf;

  --,errorAdress as (select POSTORT, POSTNUMMER, ADRESS, NAMN, Namn2, Fastighet, �rendeNr4�rs2019.�rndenr from filterSmallOwnersBadAdress right outer join �rendeNr4�rs2019 on �rendeNr4�rs2019.�rndenr = filterSmallOwnersBadAdress.�rndenr where namn is null)

   --  ,errorcheck as (  select Fastighet as eFas,errorAdress.�rndenr as e�r, asdasd.*from errorAdress left outer join  MakeMaka as asdasd on errorAdress.Fastighet = asdasd.BETECKNING)
