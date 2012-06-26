accessing
setSourcePointer: aSourcePointer
	sourceFileNumber := SourceFiles fileIndexFromSourcePointer: aSourcePointer.
	filePositionHi := SourceFiles filePositionFromSourcePointer: aSourcePointer