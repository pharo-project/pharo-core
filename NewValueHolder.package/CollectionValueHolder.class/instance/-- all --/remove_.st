remove: oldObject

	| result |
	result := value remove: oldObject.
	self valueChanged: oldObject.
	^ result