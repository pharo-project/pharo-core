failures
expectedFailures
	^ ((SystemVersion current major = 1) and: [SystemVersion current minor < 3]) 
		ifTrue: [
			#( #testSetElement #testSetWithNil #testSetWithSetElement )]
		ifFalse: [#(testConsiderCustomWideSymbolGlobal)]