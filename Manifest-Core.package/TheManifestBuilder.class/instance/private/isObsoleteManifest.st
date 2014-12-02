isObsoleteManifest

	| methodDico |
	methodDico := manifestClass methodDict.
	^ methodDico isEmpty 
		or: [methodDico anySatisfy: [:method | |selector|
				selector := method selector.
				(self manifest perform: selector) anySatisfy: [ :each | 
				each first first = (Character value: 40)]]  ]