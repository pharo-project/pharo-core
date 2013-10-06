drawKeyTextOn: aCanvas 
	"Draw the key text on the canvas."
	
	|ktp ktw b|
	self keyText ifNil: [^self].	
	ktp := self hasSubMenu ifTrue: [self right - self subMenuMarker width] ifFalse: [self right].
	ktp := ktp - (ktw := self fontToUse widthOfString: self keyText).
	b := (ktp @ (self bounds top + self bounds bottom - self fontToUse height // 2) extent: ktw @ self height).
	self drawText: self keyText on: aCanvas in: b color: Color gray muchDarker.