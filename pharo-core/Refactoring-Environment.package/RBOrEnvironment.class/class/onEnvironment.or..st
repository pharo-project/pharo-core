as yet unclassified
onEnvironment: anEnvironment or: anotherEnvironment
	^ (self onEnvironment: anEnvironment)
		orEnvironment: anotherEnvironment;
		yourself