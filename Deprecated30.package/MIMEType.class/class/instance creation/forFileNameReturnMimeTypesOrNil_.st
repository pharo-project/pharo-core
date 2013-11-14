forFileNameReturnMimeTypesOrNil: fileName

"	Disabled for now as the default Pharo image does not have FFI included.
	Should probably be moved into a future version of the directory plugin.
	SmalltalkImage current platformName = 'Mac OS'
		 ifTrue: 
			[type := MacUTI callGetMimeTypeOrNilForFileExtension: ext.
			type ifNil: 
					[fileType := (FileDirectory default getMacFileTypeAndCreator: fileName) at: 1.
					(fileType = '????' or: [fileType = ((ByteArray new: 4 withAll:0) asString asByteString)])
						ifTrue: [^self forExtensionReturnMimeTypesOrNil: ext].
					consider := MacUTI callGetMimeTypeOrNilForOSType: fileType.
					consider ifNotNil: [^Array with: consider]]
				ifNotNil: 
					[^Array with: type]].
"
	^self forExtensionReturnMimeTypesOrNil: fileName asFileReference extension