createWordList: aString
	"The input of the wordlist can be something from <http://wordlist.sourceforge.net/>."
	"self createWordList: '/Users/renggli/Desktop/words.txt'"

	| words input output zipped |
	words := Set new.
	input := FileStream fileNamed: aString.
	input converter: Latin1TextConverter new.
	[ input atEnd ] whileFalse: [
		| word |
		word := input upTo: Character lf.
		word ifNotNil: [
			word := word trimBoth.
			word size > 1
				ifTrue: [ words add: word asLowercase ] ] ].
	output := self basicNew directory
		forceNewFileNamed: self basicNew filename.
	zipped := ZLibWriteStream on: output binary.
	zipped nextInt32Put: words size.
	words asArray sort
		do: [ :each | zipped nextPut: each size; nextPutAll: (ByteArray withAll: each) ].
	zipped close.
	output close