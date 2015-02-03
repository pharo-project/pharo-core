showPreview

	self isPreviewVisible ifTrue: [ ^ self ].
	isPreviewVisible := true.
	self class showPreview.
	self announcer announce: GTSpotterShowPreview new.
	