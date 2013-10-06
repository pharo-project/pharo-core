checkClass: aContext 
	| assoc |
	(aContext selectedClass isMeta or: [  aContext selectedClass subclasses notEmpty or: [ aContext includesBehaviorNamed: #TestCase ] ])
		ifTrue: [ ^ self ].
	assoc := Smalltalk globals associationAt: aContext selectedClass name.
	((aContext uses: assoc) or: [ aContext uses: aContext selectedClass name ]) ifFalse: [
		result
			addClass: aContext selectedClass;
			addClass: aContext selectedClass class ]