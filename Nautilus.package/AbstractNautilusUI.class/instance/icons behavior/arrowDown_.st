arrowDown: aMethod

	| methods methodsNames index |
	methods := aMethod methodClass allSubclasses gather: [:each | each methods ].
	methods := methods select: [:each | each selector = aMethod selector ].
	methods size = 1
		 ifTrue: [ ^ self model class openOnMethod: methods first ].
	methodsNames := methods collect: [:each | each methodClass name, '>>#', each selector ].
	index := UIManager default chooseFrom: methodsNames.
	index = 0 ifTrue: [ ^ self ].
	^ self model class openOnMethod: (methods at: index)
	