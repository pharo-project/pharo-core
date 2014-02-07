updateRepository
	"Update the core repository of this project"
	| packageName repoManager |
	
	project ifNotNil: [ 
		packageName := project configurationClass package name.
		repoManager := VersionnerRepositoriesManager new.
		repoManager
			selectedChangedBlock:  [:remote :selected |
				selected
					ifTrue: [ repository accept: remote location ] ];
			open;
			yourself  ]