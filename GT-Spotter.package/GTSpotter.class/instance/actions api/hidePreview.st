hidePreview

	self isPreviewVisible ifFalse: [ ^ self ].
	isPreviewVisible := false.
	self class dontShowPreview.
	self announcer announce: GTSpotterHidePreview new.
	