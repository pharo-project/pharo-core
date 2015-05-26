trace: aBlock on: aStream
	"This method uses the simulator to print calls to a file."
	| prev |
	prev := aBlock.
	^ thisContext sender
		runSimulated: aBlock
		contextAtEachStep:
			[:current |
			Sensor anyButtonPressed ifTrue: [^ nil].
			current == prev
				ifFalse:
					[prev sender ifNil:
						[
						"Following does not work anymore due to closures?"
						"
						aStream space; nextPut: $^.
						self carefullyPrint: current top on: aStream
						"].
					aStream cr.
					(current depthBelow: aBlock) timesRepeat: [aStream space].
					self carefullyPrint: current receiver on: aStream.
					aStream space; nextPutAll: current selector; flush.
					prev := current]]