updateFieldOffsetsFor: structClass

	"Recalculate field offsets based on (possibly new) platform byte alignment"
	| names byteAlign align type newSize |
	
	names := self namesInDeclarationOrder.
	
	newSize := 0.
	byteAlign := structClass byteAlignment.
	
	
	names do: [ :each |
		type := (fields at: each) first.
		align := type typeSize min: byteAlign.
		
		newSize := (newSize alignedTo: align) + type typeSize.
		fields
			at: each
			put:
			{ type.
			(newSize - type typeSize)} ].
		
	totalSize := newSize.