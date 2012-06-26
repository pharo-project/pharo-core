preference access
soundEnabled
	^ SoundEnabled ifNil: [SoundEnabled := false]