testSymbolIdentifier
	| passed |
	passed := false.
	
	[announcer 
		on: #FOO send: #bar to: nil;
		announce: #FOO ] 
		on: MessageNotUnderstood 
		do: [ :ex | passed := (ex message selector = #bar). ].
		
	self assert: passed 