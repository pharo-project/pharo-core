spotterModel: aSpotter

	spotterModel := aSpotter.
	
	spotterModel announcer weak subscribe: GTSpotterExitAnnouncement send: #escapePressed to: self.
	spotterModel announcer weak subscribe: GTSpotterShowPreview send: #onShowPreview to: self.
	spotterModel announcer weak subscribe: GTSpotterHidePreview send: #onHidePreview to: self.
	
	self breadcrumbBrick spotterModel: spotterModel.
	self paneBrick spotterModel: spotterModel.
	
	spotterModel class isPreviewVisible ifTrue: [ spotterModel showPreview ].
	
	"expanding drop down pane"
	self spotterModel setText: '' from: nil.
	self spotterModel currentStep process: nil.
	
	
	