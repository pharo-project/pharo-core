initializePresenter
	"Initialize widgets behavior"

	updateButton action: [ self executeWithDevWorkflow: VSUpdateDevelopmentVersionCommand ].
	
	releaseButton action: [ self executeWithDevWorkflow: VSReleaseDevelopmentVersionCommand ].
	
	commitButton action: [ 	(VSSaveProjectCommand target: browser project for: self) execute ].