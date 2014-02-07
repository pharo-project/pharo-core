initializeWidgets
	self initializeGroupsWidget.
	self initializeProjectsWidget.
	
	packagesPanel := self instantiate: VersionnerProjectPackagesPanel.

	groupsLabel  := (self instantiate: LabelModel)
		text: 'Groups';
		yourself.
	
	projectsLabel :=  self instantiate: LabelModel.
	projectsLabel text: 'Dependent projects'.
