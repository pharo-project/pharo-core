helpers
receiver
	"Input: none.
	Output: EAX - a method's receiver"
	
	self canUseStackPointer ifFalse: [ ^self stackValue: self methodArgumentCount ].
	"EAX - count "
	^self receiverInto: EAX.
	"EAX - receiver"
	