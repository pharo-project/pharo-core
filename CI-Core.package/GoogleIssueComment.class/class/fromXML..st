instance creation
fromXML: entryNode

	| comment idString |
	
	idString := entryNode id text.
	
	comment := self id: (idString copyFrom: (idString lastIndexOf: $/) + 1 to: idString size) asInteger. 
	
	comment published: entryNode published text asDateAndTime.
	comment updated: entryNode updated text asDateAndTime.
	comment title: entryNode title text trimBoth.
	comment content: entryNode content text trimBoth.
	comment author: (GoogleUser fromXML: entryNode author).
	
	^ comment