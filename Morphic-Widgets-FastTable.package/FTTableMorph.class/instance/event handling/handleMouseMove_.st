handleMouseMove: anEvent
	"Reimplemented because we really want #mouseMove when a morph is dragged around"
	anEvent wasHandled ifTrue:[^self]. "not interested"
	(anEvent anyButtonPressed and:[anEvent hand mouseFocus == self]) ifFalse:[^self].
	anEvent wasHandled: true.
	self mouseMove: anEvent
