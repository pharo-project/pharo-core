in: aMethod during: aBlock

	(self signalForMethod: aMethod) ifTrue: [
		^ NBCodeGenRecursion signal: aMethod printString
		].

	^ aBlock on: self do: [:ex | ex check: aMethod ].