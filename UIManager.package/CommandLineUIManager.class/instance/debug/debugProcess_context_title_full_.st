debugProcess: process context: context title: title full: bool
	| description |
	description := String streamContents: [ :stream |
		stream
			nextPutAll: 'debugging process: ';
			nextPutAll: process name;
			cr;
			nextPutAll: 'context:';
			cr;
			print: context ].
	self 
		logTitle: title
		andDescription: description 
		to: self stderr