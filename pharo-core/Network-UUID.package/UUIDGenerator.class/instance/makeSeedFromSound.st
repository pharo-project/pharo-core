random seed
makeSeedFromSound
 	| answer |
 	[answer := SoundService default randomBitsFromSoundInput: 32
 	] ifError: [answer := nil].
 	^answer