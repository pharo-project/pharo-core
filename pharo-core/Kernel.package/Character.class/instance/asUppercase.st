converting
asUppercase
	"If the receiver is lowercase, answer its matching uppercase Character."
	"A tentative implementation.  Eventually this should consult the Unicode table."	

	| v |
	v := self charCode.
	(((8r141 <= v and: [v <= 8r172]) or: [16rE0 <= v and: [v <= 16rF6]]) or: [16rF8 <= v and: [v <= 16rFE]])
		ifTrue: [^ Character value: value - 8r40]
		ifFalse: [^ self]
