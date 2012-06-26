private
refresh

	self flag: 'I don''t know what to do about the stripe... - SeanDeNigris'.
"	self isBarStriped ifTrue: [bar fillStyle origin: bar position - ((Time millisecondClockValue // 50 \\ 30) @ 0)]."
	lastRefresh := Time millisecondClockValue.
	self currentWorld displayWorld.