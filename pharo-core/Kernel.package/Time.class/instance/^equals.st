ansi protocol
= aTime

	^ [ self ticks = aTime ticks ]
		on: MessageNotUnderstood do: [false]