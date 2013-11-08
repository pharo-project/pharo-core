atWrap: index put: value
	
	| result |
	result := value atWrap: index put: value.
	self valueChanged: value.
	^ result