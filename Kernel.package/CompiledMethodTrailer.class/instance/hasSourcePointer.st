testing
hasSourcePointer
	^  kind == #SourcePointer or: [ kind == #VarLengthSourcePointer or: [ kind == #NativeCodeTrailer ] ] 