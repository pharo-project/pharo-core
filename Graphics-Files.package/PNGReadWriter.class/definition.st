ImageReadWriter subclass: #PNGReadWriter
	instanceVariableNames: 'chunk form width height depth backColor bitsPerChannel colorType interlaceMethod bitsPerPixel bytesPerScanline thisScanline prevScanline rowSize idatChunkStream unknownChunks palette transparentPixelValue filtersSeen cachedDecoderMap bigEndian'
	classVariableNames: 'BPP BlockHeight BlockWidth Debugging StandardColors StandardSwizzleMaps'
	poolDictionaries: ''
	category: 'Graphics-Files'