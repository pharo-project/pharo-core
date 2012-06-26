initialization
initialize
	super initialize.
	self matcher 
		matches: '(((`@reciver `@msg1: `@arg1) `@msg2: `@arg2) `@msg3: `@arg3)  `@msg4: `@arg4'
		do: [ :node :answer | node ]