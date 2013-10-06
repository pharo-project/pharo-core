printSelection
	selectionIndex <= (self numberOfFixedFields) ifTrue: [^ self selection printStringLimitedTo: 5000].
	^self selection ifNil: [ nil ] ifNotNil: [ :itself | 
		itself debugPrintString]