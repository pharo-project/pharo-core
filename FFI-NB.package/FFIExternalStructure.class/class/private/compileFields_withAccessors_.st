compileFields: specArray withAccessors: defineBoolean
	| offset fieldSpec |
			
	fieldSpec := self fieldSpec.
	offset := 1.	
	fieldSpec fieldsAndTypesDo: [ :fieldName :type | 
		defineBoolean ifTrue: [ 
			self defineFieldAccessorsFor: fieldName startingAt: offset type: type ]. 
		offset := offset + type typeSize ].
	
	"Real compiled spec is the compiled spec of fields plus a header with structure size and 
	 structure flag"
	compiledSpec := fieldSpec compileSpec copyWithFirst: (offset - 1 bitOr: FFIFlagStructure).
	ExternalType noticeModificationOf: self