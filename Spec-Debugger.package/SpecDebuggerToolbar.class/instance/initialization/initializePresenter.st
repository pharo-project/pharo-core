initializePresenter
	super initializePresenter.
	
	"session whenChangedDo: [
		self update	]."
	
	selectedContext  whenChangedDo: [
		self updateCreateMethodButton ]