private - utilities
createIconMethodsFromFile: aFileNamePrefix directory: directory 
	"Create the methods for the icon.
	aFileNamePrefix is the png file name prefix (without the .png suffix)
	directory is where the png file is"
	| iconContentsSourceTemplate iconSourceTemplate png base64 contentsSelector selector |
	iconContentsSourceTemplate := '{1}IconContents
	"Private - Method generated with the content of the file {2}"
	^ ''{3}'''.
	iconSourceTemplate := '{1}
	"Private - Generated method"
	^icons 
			at: #{1}
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self {1}Contents readStream) ].'.
	png :=( directory asDirectory / aFileNamePrefix , 'png') fullName.
	[base64 := self base64ContentsOfFileNamed: png ]
		on: Error
		do: [base64 := nil].
	base64
		ifNotNil: [contentsSelector := (aFileNamePrefix , 'IconContents') asSymbol.
			((self respondsTo: contentsSelector)
					and: [(self perform: contentsSelector)
							= base64])
				ifFalse: [| contentsSource |
					contentsSource := iconContentsSourceTemplate format: {aFileNamePrefix. png. base64}.
					self class compile: contentsSource classified: '*Graphics-Resources-Theme-Icons'].
			selector := (aFileNamePrefix , 'Icon') asSymbol.
			(self respondsTo: selector)
				ifFalse: [| source |
					source := iconSourceTemplate format: {selector}.
					self class compile: source classified: 'private - icons']]