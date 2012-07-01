accessing
sourcePointer

	^ (kind == #SourcePointer or: [ kind == #VarLengthSourcePointer ] )
		ifTrue: [ data ]
		ifFalse: [ 0 ]
