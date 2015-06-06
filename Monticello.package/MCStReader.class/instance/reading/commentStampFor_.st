commentStampFor: aRingClass
	| comment |
	comment := aRingClass organization classComment.
	^  [comment stamp] on: MessageNotUnderstood do: [nil]