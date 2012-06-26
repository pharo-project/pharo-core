canvas
canvas: x 
	canvas := x.
	damageRecorder isNil 
		ifTrue: [damageRecorder := DamageRecorder new]
		ifFalse: [damageRecorder doFullRepaint]