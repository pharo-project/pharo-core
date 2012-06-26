drawing
visible: aBoolean 
	"set the 'visible' attribute of the receiver to aBoolean"
	extension ifNil: [aBoolean ifTrue: [^ self]].
	self assureExtension visible: aBoolean