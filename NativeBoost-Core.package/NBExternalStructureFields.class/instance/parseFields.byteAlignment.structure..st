parsing spec
parseFields: fieldSpec byteAlignment: byteAlign structure: structClass

	| stream type name gen align |
	stream := fieldSpec readStream.
	gen := NBFFICallout new requestor: structClass.
	
	fields := Dictionary new.
	totalSize := 0.
	[ stream atEnd ] whileFalse: [ | arity |
		type := gen resolveType: stream next. 
		arity := 0.
		[stream peek = #* ] whileTrue: [
			arity := arity + 1.
			stream next
		].
		type pointerArity: arity.
		
		name := stream next.
		name isSymbol ifFalse: [ self error: 'invalid field name'].
		fields at: name ifPresent: [ self error: 'duplicate field name' ].

		align := type typeSize min: byteAlign. "if byte align == 1, struct is packed"
		"add padding between fields, if needed"
		totalSize := (totalSize alignedTo: align) + type typeSize .

		fields at: name put: { type. totalSize - type typeSize }.
	
		stream peek == #';' ifTrue: [ stream next ].
	].
