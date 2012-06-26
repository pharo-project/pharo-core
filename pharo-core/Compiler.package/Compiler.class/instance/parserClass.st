public access
parserClass
	"Answer the class of parser. In future, should be replaced with more flexible #newParser " 
	^ parser ifNil: [(class ifNil: [self class]) parserClass] ifNotNil: [parser class]
 