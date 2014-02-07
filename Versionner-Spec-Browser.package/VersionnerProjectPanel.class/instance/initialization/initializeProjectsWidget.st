initializeProjectsWidget
	projectList := (self instantiate: TreeModel) 
		whenBuiltDo: [ projectList rootNodeHolder: 
							[ :item | VSProjectNode new content: item ] ];
		yourself.
	"projectList displayBlock: [:item | item asString ].
	projectList childrenBlock: [:item | 
		(item isKindOf: MTDependency )
			ifTrue: [ item dependencies collect: [ :each | '--> loads: ' , each] ] 
			ifFalse: [{}] ]."
		"| text version |
		text :=  item name.
		version := item currentVersion.
		(version size > 0) ifTrue: [
			text := text , ' (' , item currentVersion , ')' ].
		text  asStringMorph ]."
	
	addProjectButton := (self instantiate: ButtonModel)
		label: nil;
		icon: (Smalltalk ui icons iconNamed: #addIcon);
		enabled: false;
		help: 'Add a new dependent project to this project'.
	
	removeProjectButton  := (self instantiate: ButtonModel)
		icon: (Smalltalk ui icons iconNamed: #deleteIcon);
		enabled: false;
		help: 'Remove a dependent project from this project'.