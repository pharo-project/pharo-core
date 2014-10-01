acceptContents: aString

	self flag: #TODO. "Need support for what lies in the comment down here"
	"self fileName ifNotNil: [ self saveString: aString toFile: self fileName ].

	acceptAction ifNotNil:[acceptAction value: aString]."
	self content: aString.
	^ true