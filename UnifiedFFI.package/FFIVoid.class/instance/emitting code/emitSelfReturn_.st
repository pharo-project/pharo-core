emitSelfReturn: aBuilder
	^ aBuilder 
		popTop;
		pushReceiver;
		returnTop