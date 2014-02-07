initializePresenter
	"Initialize widgets behavior"

	newButton action: [ self newConfiguration ].
	loadButton action: [ (VSLoadProjectCommand target: self for: self) execute ].