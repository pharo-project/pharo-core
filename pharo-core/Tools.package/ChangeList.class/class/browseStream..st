public access
browseStream: changesFile
	"Opens a changeList on a fileStream"
	| changeList charCount |
	changesFile readOnly.
	changesFile setConverterForCode.
	charCount := changesFile size.
	charCount > 1000000 ifTrue:
		[(self confirm: 'The file ', changesFile name , '
is really long (' , charCount printString , ' characters).
Would you prefer to view only the last million characters?')
			ifTrue: [charCount := 1000000]].
	"changesFile setEncoderForSourceCodeNamed: changesFile name."
	Cursor read showWhile:
		[changeList := self new
			scanFile: changesFile from: changesFile size-charCount to: changesFile size].
	changesFile close.
	self open: changeList name: changesFile localName , ' log' multiSelect: true