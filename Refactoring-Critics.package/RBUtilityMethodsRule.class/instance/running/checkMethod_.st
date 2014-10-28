checkMethod: aMethod 
	(aMethod methodClass isMeta or: 
		[ aMethod selector numArgs == 0 or: 
			[ self utilityProtocols includes: aMethod protocol ] ]) ifFalse: 
		[ (self 
			subclassOf: aMethod methodClass
			overrides: aMethod selector) ifFalse: 
			[ (aMethod superMessages isEmpty and: [ aMethod selfMessages isEmpty ]) ifTrue: 
				[ (aMethod methodClass allInstVarNames , aMethod methodClass allClassVarNames asArray , #('self' ) 
					detect: [ :each | aMethod ast references: each ]
					ifNone: [  ]) isNil ifTrue: 
					[ result addMethod: aMethod ] ] ] ]