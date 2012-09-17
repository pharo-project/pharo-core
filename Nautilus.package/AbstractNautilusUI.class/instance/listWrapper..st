private
listWrapper: anElement

	anElement = 0 ifTrue: [^''].
	^ self 
		ifGroups: [ anElement name ]
		ifNot: [ 
			anElement name
			"self 
				ifPackages: [ anElement name  ] 
				ifClasses: [ self buildTabbedNameOf: anElement ]"]