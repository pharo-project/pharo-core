atWrap: index put: anObject
	
	| result |
	result := value atWrap: index put: anObject.
	self valueChanged: value.
	^ result