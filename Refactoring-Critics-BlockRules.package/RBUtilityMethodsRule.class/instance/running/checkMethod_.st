checkMethod: aContext 
	(aContext selectedClass isMeta or: 
		[ aContext selector numArgs == 0 or: 
			[ (aContext protocols 
				detect: 
					[ :each | 
					(self utilityProtocols 
						detect: [ :protocol | protocol match: each ]
						ifNone: [  ]) notNil ]
				ifNone: [  ]) notNil ] ]) ifFalse: 
		[ (self 
			subclassOf: aContext selectedClass
			overrides: aContext selector) ifFalse: 
			[ (aContext superMessages isEmpty and: [ aContext selfMessages isEmpty ]) ifTrue: 
				[ (aContext selectedClass allInstVarNames , aContext selectedClass allClassVarNames asArray , #('self' ) 
					detect: [ :each | aContext parseTree references: each ]
					ifNone: [  ]) isNil ifTrue: 
					[ result 
						addClass: aContext selectedClass
						selector: aContext selector ] ] ] ]