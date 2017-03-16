commentsLog
	
	^ commentsLog ifNil: [ self monitor log ]