spotterProcessorsFor: aSpotterStep
	
	^ ((Pragma 
		allNamed: #spotterOrder:
		from: self class 
		to: Object)
			sort: [ :first :second | (first argumentAt: 1) < (second argumentAt: 1) ])
			do: [ :pragma |
				self 
					perform: pragma selector 
					with: aSpotterStep ]