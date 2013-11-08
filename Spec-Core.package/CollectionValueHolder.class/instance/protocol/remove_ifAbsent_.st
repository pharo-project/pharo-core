remove: oldObject ifAbsent: absentBlock

	| result |
	result := value remove: oldObject ifAbsent: absentBlock.
	self valueChanged: oldObject.
	^ result