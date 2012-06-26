controlling
hasSender: context 
	"Answer whether the receiver is strictly above context on the stack."

	| s |
	self == context ifTrue: [^false].
	s := sender.
	[s == nil]
		whileFalse: 
			[s == context ifTrue: [^true].
			s := s sender].
	^false