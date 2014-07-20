browseCompressedChangesFile: fullName
	"Browse the selected file in fileIn format."

	| unzipped stream |
	fullName ifNil: [ ^ self inform: 'Missing file name' ].
	stream := FileStream readOnlyFileNamed: fullName.
	unzipped := [ 
	| zipped |
	stream converter: Latin1TextConverter new.
	zipped := GZipReadStream on: stream.
	zipped contents asString ]
		ensure: [ stream close ].
	stream := (MultiByteBinaryOrTextStream with: unzipped) reset.
	self browseStream: stream