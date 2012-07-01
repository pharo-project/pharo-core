*regex-core
search: aString
	"compatibility method to make regexp and strings work polymorphicly"
	^ aString includesSubString: self