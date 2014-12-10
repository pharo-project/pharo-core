spotterModel: aSpotter

	spotterModel := aSpotter.
	
	spotterModel announcer subscribe: GTSpotterExitAnnouncement send: #delete to: self.
	
	self breadcrumbBrick spotterModel: spotterModel.
	self contentsBrick spotterModel: spotterModel.
	
	"expanding drop down pane"
	self spotterModel setText: '' from: nil.
	self spotterModel currentStep process: nil.
	
	