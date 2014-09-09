checkMethod: aContext 
	(aContext selectedClass isMeta or: 
		[ aContext selector numArgs == 0 or: 
			[ self utilityProtocols includes: aContext compiledMethod protocol ] ]) ifFalse: 
		[ (self 
			subclassOf: aContext selectedClass
			overrides: aContext selector) ifFalse: 
			[ (aContext compiledMethod superMessages isEmpty and: [ aContext compiledMethod selfMessages isEmpty ]) ifTrue: 
				[ (aContext selectedClass allInstVarNames , aContext selectedClass allClassVarNames asArray , #('self' ) 
					detect: [ :each | aContext compiledMethod parseTree references: each ]
					ifNone: [  ]) isNil ifTrue: 
					[ result 
						addClass: aContext selectedClass
						selector: aContext selector ] ] ] ]