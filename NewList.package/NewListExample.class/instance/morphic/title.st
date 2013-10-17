title

	^ toggleTitle
		ifTrue: [ 'Title' ]
		ifFalse: [ 'Title (reversed)' ]