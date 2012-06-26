as yet unclassified
color: aColor
	"Set the gradient colors."
	
	self
		basicColor: aColor;
		selectedColor: (Color h: aColor hue s: self selectedColor saturation v: self selectedColor brightness)