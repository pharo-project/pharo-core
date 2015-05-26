stripComment
	| start stop |
	start := stream position.
	[self step = $"] whileFalse: 
			[characterType = #eof
				ifTrue: [^self scannerError: 'Unmatched " in comment.' translated]].
	stop := stream position.
	self step.
	comments add: (start to: stop)