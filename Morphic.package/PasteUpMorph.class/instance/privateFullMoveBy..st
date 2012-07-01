private
privateFullMoveBy: delta
	"Private. Overridden to prevent drawing turtle trails when a playfield is moved"
	self setProperty: #turtleTrailsDelta toValue: delta.
	super privateFullMoveBy: delta.
	self removeProperty: #turtleTrailsDelta.
