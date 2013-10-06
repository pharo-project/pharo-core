defer: aValuable
	self owner ifNotNil: [:o | o defer: aValuable] ifNil: [ UIManager default defer: aValuable ]