valueWithPossibleArgs: anArray
	| numberOfArgs |
	numberOfArgs := self numArgs.
	numberOfArgs = 0
		ifTrue: [ ^ self value ].
	numberOfArgs = anArray size
		ifTrue: [ ^ self valueWithArguments: anArray ].
	numberOfArgs > anArray size
		ifTrue: [ ^ self valueWithArguments: anArray , (Array new: numberOfArgs - anArray size) ].
	^ self valueWithArguments: (anArray copyFrom: 1 to: numberOfArgs)