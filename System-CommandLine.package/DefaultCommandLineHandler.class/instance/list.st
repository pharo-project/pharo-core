activation
list
	| handlers shortNames maxShortNameSize |
	self stdout 
		nextPutAll: 'Currently installed Command Line Handlers:'; cr.
		
	handlers := self allHandlers reject: [ :cls| cls = DefaultCommandLineHandler ].
	shortNames := handlers collect: #commandName.
	maxShortNameSize := (shortNames detectMax: [ :name|  name size ]) size.
	
	handlers do: [ :handler|
		self stdout 
			nextPutAll: '    ';
			nextPutAll: (handler commandName padRightTo: maxShortNameSize); 
			nextPutAll: '    ';
			nextPutAll: (handler description ifNil: [ '--']);cr].
	self quit.