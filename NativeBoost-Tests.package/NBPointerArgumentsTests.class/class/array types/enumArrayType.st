enumArrayType
	^EnumArrayType isNil ifTrue: [EnumArrayType := NBExternalArray ofType: self enumType] ifFalse:[EnumArrayType]