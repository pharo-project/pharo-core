ioFilename: aCharBuffer fromString: aFilenameString ofLength: filenameLength resolveAliases: bool
"the vm has to convert aFilenameString via any canonicalization and char-mapping and put the result in aCharBuffer.
Note the resolveAliases flag - this is an awful artefact of OSX and Apples demented alias handling. When opening a file, the flag must be  true, when closing or renaming it must be false. Sigh."	
	^ self simpleCall