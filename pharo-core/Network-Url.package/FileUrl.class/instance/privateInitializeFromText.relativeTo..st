private-initialization
privateInitializeFromText: pathString relativeTo: aUrl
	"<pathString> should be a filesystem path.
	This url is adjusted to be aUrl + the path."

	| bare newPath |
	self host: aUrl host.
	self initializeFromPathString: pathString.
	self isAbsolute: aUrl isAbsolute.

	newPath := aUrl path copy.
	newPath removeLast.	"empty string that says its a directory"
	path do: [ :token |
		((token ~= '..') and: [token ~= '.']) ifTrue: [ 
			newPath addLast: token unescapePercents ].
		token = '..' ifTrue: [ 
			newPath isEmpty ifFalse: [ 
				newPath last = '..' ifFalse: [ newPath removeLast ] ] ].
		"token = '.' do nothing" ].
	path := newPath

	