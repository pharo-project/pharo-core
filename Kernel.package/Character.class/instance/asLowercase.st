converting
asLowercase
	"If the receiver is uppercase, answer its matching lowercase Character."
	"A tentative implementation.  Eventually this should consult the Unicode table."

	| v |
	v := self charCode.
	(((8r101 <= v and: [v <= 8r132]) or: [16rC0 <= v and: [v <= 16rD6]]) or: [16rD8 <= v and: [v <= 16rDE]])
		ifTrue: [^ Character value: value + 8r40]
		ifFalse: [^ self]