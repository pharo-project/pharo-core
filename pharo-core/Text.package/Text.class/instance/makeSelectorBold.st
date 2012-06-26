emphasis
makeSelectorBold
	"For formatting Smalltalk source code, set the emphasis of that portion of 
	the receiver's string that parses as a message selector to be bold."

	| parser i |
	string size = 0 ifTrue: [^ self].
	i := 0.
	[(string at: (i := i + 1)) isSeparator] whileTrue.
	(string at: i) = $[ ifTrue: [^ self].  "block, no selector"
	[(parser := self class evaluatorClass parserClass new) parseSelector: string] on: Error do: [^ self].
	self makeBoldFrom: 1 to: (parser endOfLastToken min: string size)