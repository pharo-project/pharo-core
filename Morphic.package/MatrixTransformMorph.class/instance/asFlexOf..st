initialize
asFlexOf: aMorph
	"Initialize me with position and bounds of aMorph,
	and with an offset that provides centered rotation."
	self addMorph: aMorph.
	self setRotationCenterFrom: aMorph center .
	self lastRotationDegrees: 0.0. 
	self computeBounds