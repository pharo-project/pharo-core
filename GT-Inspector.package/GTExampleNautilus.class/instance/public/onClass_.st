onClass: aBuilder
	| target class examples |
	target := aBuilder model.
	(class := target selectedClass) ifNil: [ ^ self ].
	self onReferences: class theNonMetaClass name builder: aBuilder.
	(examples := class theNonMetaClass gtExamplesContained) isEmptyOrNil ifTrue: [ ^ self ].
	self onExamples: examples builder: aBuilder