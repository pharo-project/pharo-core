squeak protocol
current

	| ts ticks |
	ts := super now.
	
	ticks := ts ticks.
	ticks at: 3 put: 0.
	ts ticks: ticks offset: ts offset.
	
	^ ts
		
