flexing
changeRotationCenter: evt with: rotHandle
	| pos |
	pos := evt cursorPoint.
	rotHandle referencePosition: pos.
	self referencePosition: pos.