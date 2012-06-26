transformations
+ aColor
	"Answer this color mixed with the given color in an additive color space.  "
	"(Color blue + Color green) display"

	^ Color basicNew
		setPrivateRed: self privateRed + aColor privateRed
		green: self privateGreen + aColor privateGreen
		blue: self privateBlue + aColor  privateBlue
