events
handleEvent: evt 
	"Store the event in the queue if there's any"
	| type |
	type := evt at: 1.
	type = EventTypeKeyboard
		ifTrue: [
			"Check if the event is a user interrupt"
			((evt at: 4) = 0
				and: [((evt at: 3)
						bitOr: (((evt at: 5)
							bitAnd: 8)
							bitShift: 8))
							= interruptKey])
					ifTrue: [
						Display deferUpdates: false.
						(Smalltalk hasClassNamed: #SoundService)
							ifTrue: [(Smalltalk classNamed: #SoundService) default shutDown].
						self handleUserInterrupt].
			^self ].
	