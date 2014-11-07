title

	^ title 
		ifNil: [ self result ]
		ifNotNil: [ title ]