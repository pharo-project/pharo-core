testing
willSend
	"Answer whether the next bytecode is a message-send."

	| byte |
	byte := self method at: pc.
	^byte >= 131
	  and: [byte >= 176 "special send or short send"
		or: [byte <= 134]]	"long sends"