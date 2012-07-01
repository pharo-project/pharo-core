as yet unclassified
commentStampFor: aPseudoClass
	| comment |
	comment := aPseudoClass organization classComment.
	^  [comment stamp] on: MessageNotUnderstood do: [nil]