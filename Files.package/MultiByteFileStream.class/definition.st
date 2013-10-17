StandardFileStream subclass: #MultiByteFileStream
	instanceVariableNames: 'converter lineEndConvention wantsLineEndConversion'
	classVariableNames: 'Cr CrLf Lf LineEndDefault LineEndStrings LookAheadCount'
	poolDictionaries: ''
	category: 'Files-Kernel'