spotterProcessorsFor: aSpotterStep
	
	^ (((Pragma 
		allNamed: #spotterOrder:
		from: self class 
		to: Object)
			select: [:pragma | aSpotterStep processorsFilter shouldEnableProcessorsCreateBy: pragma method])
			sort: [ :first :second | (first argumentAt: 1) < (second argumentAt: 1) ])
			do: [ :pragma | self spotterProcessorsFor: aSpotterStep pragma: pragma ]