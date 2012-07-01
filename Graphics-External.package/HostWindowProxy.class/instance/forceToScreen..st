window manipulation
forceToScreen: damageRectangle 
	"update the area of the sourceForm defined by damageRectangle"
	self
		primitiveUpdateHostWindow: windowHandle
		bitmap: self bits
		width: self width
		height: self height
		depth: self depth
		left: damageRectangle left
		right: damageRectangle right
		top: damageRectangle top
		bottom: damageRectangle bottom