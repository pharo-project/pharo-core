as yet unclassified
testIntToEnumNotIncluded

	self assert: (self primIntToEnum: 7) value = 7.
	self assert: (self primIntToEnum: 3) value = 3.
	
	self assert: (self primIntToEnum: 7) item isNil.
	self assert: (self primIntToEnum: 256) item isNil.