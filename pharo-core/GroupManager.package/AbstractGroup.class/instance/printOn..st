printing
printOn: aStream

	| className article |
	className := self class name.
	article := className first isVowel
				ifTrue: ['an']
				ifFalse: ['a'].
	aStream
		nextPutAll: article;
		nextPut: Character space;
		nextPutAll: className;
		nextPutAll: ' ( ';
		nextPutAll: self name asString;
		nextPutAll: ' )'.