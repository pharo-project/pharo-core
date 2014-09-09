checkClass: aContext 
	(aContext selectedClass isMeta or: [  aContext selectedClass subclasses notEmpty or: [ aContext selectedClass inheritsFrom: TestCase ] ] )
		ifTrue: [ ^ self ].
	aContext selectedClass allCallsOn ifEmpty: [
		result
			addClass: aContext selectedClass;
			addClass: aContext selectedClass class ]