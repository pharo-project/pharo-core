initializeWidgets

	configurationList := self newIconList.	
	self focusOrder add: configurationList. 		
	configurationList menu: [ :aMenu | self configurationListMenu: aMenu ].			
	self initConfigurationList.
	self repository: self availableRepositories first