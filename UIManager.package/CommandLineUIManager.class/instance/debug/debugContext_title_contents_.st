debugContext: context title: title contents: contentsStringOrNil
	| description |
	description := String streamContents: [ :stream |
		stream
			nextPutAll: 'debugging context: ';
			cr;
			print: context.
		contentsStringOrNil ifNotNil: [ stream nextPutAll: contentsStringOrNil ] ].
	self 
		logTitle: title
		andDescription: description 
		to: self stderr