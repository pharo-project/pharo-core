forExtensionReturnMimeTypesOrNil: fileExtension
	| loweredFileExtension |

	loweredFileExtension := fileExtension asLowercase.

"	Disabled for now as the default Pharo image does not have FFI included.
	Should probably be moved into a future version of the directory plugin.
	SmalltalkImage current platformName = 'Mac OS'
		ifTrue: 
			[loweredFileExtension = '' ifTrue: [^nil].
			mime :=  MacUTI callGetMimeTypeOrNilForFileExtension: loweredFileExtension].
			mime ifNotNil: [^Array with: mime].
"
	^self mimeMappings at: loweredFileExtension ifAbsent: [^nil]