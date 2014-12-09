printOn: aStream 
	"printNameOn:"
	| title |
	title := self class name.
	aStream
		nextPutAll: (title first isVowel ifTrue: ['an '] ifFalse: ['a ']);
		nextPutAll: title.
	
	"printElementsOn:"
	aStream nextPut: $(.
	self do: [:element | aStream print: element; space].
	self isEmpty ifFalse: [aStream skip: -1].
	aStream nextPut: $)