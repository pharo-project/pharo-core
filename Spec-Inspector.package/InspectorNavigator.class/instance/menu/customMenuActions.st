customMenuActions
	^ [:aMenu |
	aMenu 
		add: 'Dive Into (d)' translated
		target: self
		selector: #dive.
	
	(history hasPrevious or: [ history hasNext ])
		ifTrue: [ aMenu addLine ].
		
	history hasPrevious ifTrue: [ 
		 aMenu 
			add: 'Back ([)' translated
			target: self
			selector: #inspectPrevious ].
			
	history hasNext ifTrue: [ 
		 aMenu 
			add: 'Forward (])' translated
			target: self
			selector: #inspectNext ]. ]