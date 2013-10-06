customMenuActions
	^ [:aMenu |
	aMenu 
		add: 'Dive (d)' translated
			target: self
			selector: #dive.
			
	history hasPrevious ifTrue: [ 
		 aMenu 
			add: 'Previous object (p)' translated
				target: self
				selector: #inspectPrevious].
			
	history hasNext ifTrue: [ 
		 aMenu 
			add: 'Next object (n)' translated
				target: self
				selector: #inspectNext]. ]