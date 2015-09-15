spotterModel: aSpotter

	spotterModel := aSpotter.
	
	spotterModel announcer weak when: GTSpotterExitAnnouncement send: #closeSpotter to: self.
	spotterModel announcer weak when: GTSpotterShowPreview send: #onShowPreview to: self.
	spotterModel announcer weak when: GTSpotterHidePreview send: #onHidePreview to: self.
	
	self breadcrumbBrick spotterModel: spotterModel.
	self paneBrick spotterModel: spotterModel.
	
	spotterModel class isPreviewVisible ifTrue: [ spotterModel showPreview ].
	
	"expanding drop down pane"
	self spotterModel setText: '' from: nil.
	self spotterModel currentStep process: nil.
	
	
	