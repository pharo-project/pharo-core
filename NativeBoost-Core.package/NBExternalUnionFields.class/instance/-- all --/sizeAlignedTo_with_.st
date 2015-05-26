sizeAlignedTo: anAlign with: aType

	totalSize := (totalSize alignedTo: anAlign ) max: (aType typeSize alignedTo: anAlign)