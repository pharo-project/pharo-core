call
gatedCall

	| sender fn args |
	sender := thisContext sender.
	fn := self functions at: (sender method selector).
	args := Array new: sender method numArgs.
	1 to: args size do: [:i |  args at: i put: (sender tempAt: i ) ].
	
	^ self callGated: fn arguments: args