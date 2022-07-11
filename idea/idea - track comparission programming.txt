two lists
reoccuring items 

comparing scrobble obects or track objects with different algorithms


divide validation and acting on similarity so it's easier to pinpoint what code doeswhat


* the validation should probalby be made with a comparator
so exchange of algorith should be as seamless as possible

multiple / complex solutions might be needed in the comparators


first key komparing, 
ifnotfound
	then artist comparing 
		iffound
		then title comparing

playcount is irrelevant??

* a similar string comparing library could be considered, google had one last isaw

artistcomparing could be fead with synonyms of artists namevariations
P.A.L = P*a*l etc

probably a set with lists
{
for every list 
	for every name of list
	if(name == askedName)
		askedNameSynonyms = list;
}

compareing both artists

	if(askedNameSynonyms.size != 0)
		for every name of list
		if name == compared
			return true;