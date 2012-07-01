printing
printOn: aStream base: base
	"Handle sign, zero, and NaNs; all other values passed to absPrintOn:base:" 

	self isNaN ifTrue: [aStream nextPutAll: 'Float nan'. ^ self]. "check for NaN before sign"
	self isInfinite 
		ifTrue: [ aStream nextPutAll: 'Float infinity'.
				self sign = -1
					ifTrue: [aStream nextPutAll: ' negated'.].
					^ self].
	self > 0.0
		ifTrue: [self absPrintExactlyOn: aStream base: base]
		ifFalse:
			[self sign = -1
				ifTrue: [aStream nextPutAll: '-'].
			self = 0.0
				ifTrue: [aStream nextPutAll: '0.0'. ^ self]
				ifFalse: [self negated absPrintExactlyOn: aStream base: base]]