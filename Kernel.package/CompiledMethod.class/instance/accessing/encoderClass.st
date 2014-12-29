encoderClass
	^ self signFlag 
		ifTrue: [ EncoderForSistaV1 ]
		ifFalse: [ EncoderForV3PlusClosures ]