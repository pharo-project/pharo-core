protocol
at: index put: value

	| result |
	result := contents at: index put: value.
	self contentsChanged: value.
	^ result