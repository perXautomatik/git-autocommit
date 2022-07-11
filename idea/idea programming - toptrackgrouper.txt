top track, tag analyse and grouper
	fetch loved tracks
	fetch tags for each artist
	aim to find as distinct subgroups rather than as large as possible mothergroups
	
	artist node:
		maintag:<-techno
		
		industrial->
		rock->
		techno->
		
	artist node:
		maintag:<-noise
		
		industrial->
		tango->
		noise->
		
	artist node:
		maintag:<-techno
		
		industrial->
		techno->
		noise->
		
		each pointer points to a array named by each uniq genre
			
		aim, rather group the two techno or the two noise then treating all three as industrial.
		
		if maintag = toptag, consider second tag as maintag.
		if maintag = leasttag, considder second tag as maintag.
