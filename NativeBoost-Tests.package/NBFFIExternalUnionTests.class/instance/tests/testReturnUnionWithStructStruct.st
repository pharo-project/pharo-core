testReturnUnionWithStructStruct

	| s struct|
	
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionWithStructStruct:.
	struct := NBTestStructure9bytes new.
	struct x: 2345.
	struct y: 6789.
	struct field: $+.
	s := self returnUnionWithStructStruct: struct.
	
	self assert: s struct x   =  struct x.
	self assert: s struct y   =  struct y.
	self assert: s struct field   =  struct field.