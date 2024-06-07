-- ifall att �garbyte skett och gammla �gande inte updaterats, v�lj den minsta �gande

-- insert tabbles from h�ndelser and �renden, in that order,
-- we are given �endenr. is not null
-- we return a table with eather null or or adress joined
-- better not return null values, rathre a smaller table.
-- the returntype should be of adress table type
-- insert, tb1, tb2
-- if tbl 1 has adress, then ignore tvbl2 else table 2.
-- the tables should both contain same �rendenrs.
-- so in theory we could just
-- diarienummer as (select �rendenr from tbl1 union select �rende from table 2 )
-- then we select from tbl1 where.. could we use isnull? basicly isnull(table1,table2) we can't of
-- course becase isnull takes columns, but we could use a id and join on that.
-- give them a computed column, replacing there �rendenr, then give them order so we can do rownr =1
-- computeed column, gotta be, null or not, table1 or table 2.
-- we also only want the latest non null adress from h�ndelse tabellen.
--(select *, row_number() over (partiotion by diarienummer sort by h�ndelsedatum)*100*(isnull(adr)+isnull(postnr)+isnull(postort)+isnull(name)) prio from table1), harNamn ressult

-- becasue we want the least faulty, and latest.
-- we pick the highest number by
-- select top 1 from ressult order by prio desc where diarienummer.diarienummer = ressult.diarienummer
-- we do a
-- ressultJOin as select * from diarienummer cross join
-- then we make a
-- tbl2 left iouter join on ressultjoin where adress is null, and tbl2 adress is not null on ressultjoin.diarienummer = tbl2.diarienummer

-- then union both ressults.
-- due to the complexity of the method, it cant be inline.

-- the nwe insert it in the  ressult table.
-- declare @ab as adresstableType
-- insert into @ab select * from

-- then we make another fuction reciving this table
-- function (tbl1 as adresstabletype) return as table
-- the table insert table has diarienummer not null but null on every personnr.
-- might have some adresses, does that doesn't have adresses, fetch from my fir method
-- fetch personnr for does that have adress but not personnr by reverse lookup.

-- select col1,col2,col3 from x join y using c? <- if youre writing the columns you want?
-- inupt left outer join where input adress is null using fnr
-- we have to make sure our fnrToFir return the correct tabletype, does it work

--select fastighet,sum(andel),min(data�R) from (select distinct z.fastighet,namn "Utskick har g�tt till:",adress till ,name "Lagfaren �gare",cast(x.NUMERATOR as float)  / cast(x.DENOMINATOR as float) andel,cast(x.REGDT as date) data�R,coalesce(x.ADDRESS1,x.ADDRESS2) adress from dbo.[AAA to print] z left outer join dbo.BestFir x on z.fastighet = x.kir) asdafw group by fastighet
