initialization
import: aSpec

	| copy first |
	copy := aSpec asOrderedCollection copy.
	first := copy removeFirst.
	first = #Panel
		ifTrue: [
			copy removeFirst.
			^ self import: copy ].
	first = #add:
		ifTrue: [ 
				desc addInstVarWrapper: copy removeFirst.
				^ self import: copy ].
	^ desc