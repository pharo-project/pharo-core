running
checkMethod: aContext
	"Check if there are any senders. Furthermore methods with pragmas are likely to be sent through reflection, thus do not report those. Also test methods are sent through reflection, so ignore those as well."

	(aContext uses: aContext selector)
		ifTrue: [ ^ self ].
	(aContext compiledMethod pragmas isEmpty)
		ifFalse: [ ^ self ].
	(aContext selectedClass isMeta not
		and: [ aContext includesBehaviorNamed: #TestCase ])
			ifTrue: [ ^ self ].
	result 
		addClass: aContext selectedClass
		selector: aContext selector