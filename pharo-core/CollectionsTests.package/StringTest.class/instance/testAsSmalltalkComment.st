tests - converting
testAsSmalltalkComment

	| exampleStrings  |
	exampleStrings := #(
		''
		' '
		'"'
		'""'
		'"""'
		'abc"abc'
		'abc""abc'
		'abc"hello"abc'
		'abc"'
		'"abc' ).

	"check that the result of scanning the comment is empty"
	exampleStrings do: [ :s |
		| tokens  |
		tokens :=  Scanner new scanTokens: s asSmalltalkComment.
		self assert: (tokens isEmpty) ].

	"check that the result has the same non-quote characters as the original"
	exampleStrings do: [ :s |
		self assert: ( (s copyWithout: $") = (s asSmalltalkComment copyWithout: $"))].

	"finnaly, test for some common kinds of inputs"
	self assert: ( 'abc' asSmalltalkComment = '"abc"').
	self assert: ( 'abc"abc' asSmalltalkComment = '"abc""abc"').
	self assert: ('abc""abc' asSmalltalkComment = '"abc""abc"' ).
		