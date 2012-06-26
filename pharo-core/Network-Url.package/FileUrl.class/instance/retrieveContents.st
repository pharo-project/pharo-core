downloading
retrieveContents
	| s entries pathString |
	pathString := self pathForFile.
	
	"We pursue the execution even if the file is not found"
	[ | type file |file := FileStream readOnlyFileNamed: pathString.
	  	type := file mimeTypes.
		type ifNotNil: [type := type first].
		type ifNil: [type := MIMEDocument guessTypeFromName: self path last].
		^MIMELocalFileDocument 
			contentStream: file
			mimeType: type]  on: FileDoesNotExistException do:[:ex| ].

	"see if it's a directory... If not, then nil is returned"
	entries := [pathString asDirectory entries] 
				on: InvalidDirectoryError do: [:ex| ^ nil].

	s := String new writeStream.
	(pathString endsWith: '/') ifFalse: [ pathString := pathString, '/' ].
	s nextPutAll: '<title>Directory Listing for ', pathString, '</title>'.
	s nextPutAll: '<h1>Directory Listing for ', pathString, '</h1>'.
	s nextPutAll: '<ul>'.
	s cr.
	entries do: [ :entry |
		s nextPutAll: '<li><a href="'.
		s nextPutAll: entry name.
		s nextPutAll: '">'.
		s nextPutAll: entry name.
		s nextPutAll: '</a>'.
		s cr. ].
	s nextPutAll: '</ul>'.
	^MIMEDocument  contentType: 'text/html'  content: s contents  url: ('file://', pathString)