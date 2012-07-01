accessing
height
	"Answer my height in pixels. This will answer a Float."
	^height ifNil:[height := self pixelSize * Scale y]