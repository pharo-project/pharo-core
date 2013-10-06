willSend
	"Answer whether the next bytecode is a message-send."

	| byte |
	byte := self method at: pc.
	^byte >= 131
	  and: [ "special send or short send" 
		byte >= 176 or: [ "long sends" byte <= 134]]