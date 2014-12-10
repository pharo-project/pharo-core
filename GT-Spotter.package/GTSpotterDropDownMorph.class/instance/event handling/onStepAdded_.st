onStepAdded: ann
	"as soon as step added we need to push it"
	self pushPane: (GTSpotterStepPane new stepModel: ann stepModel)