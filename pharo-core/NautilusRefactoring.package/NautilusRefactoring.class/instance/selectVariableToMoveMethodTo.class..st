option
selectVariableToMoveMethodTo: aSelector class: aClass
	| parseTree nameList | 
	parseTree := aClass parseTreeFor: aSelector.
	parseTree isNil ifTrue: [ 
		parseTree := RBMethodNode 
			selector: #value
			body: (RBSequenceNode statements: #()) ].
	nameList := OrderedCollection new.
	nameList
		addAll: parseTree argumentNames asSortedCollection;
		addAll: aClass allInstanceVariableNames asSortedCollection.
	^ self 
		chooseFrom: nameList 
		title: 'Select variable to move method into:'
		lines: (Array with: parseTree argumentNames size)