initializeWidgets

	self instantiateModels:  #(configurationList IconListModel).	
	self focusOrder add: configurationList. 		
	configurationList menu: [ :aMenu | self configurationListMenu: aMenu ].			
	self initConfigurationList.
	self repository: self availableRepositories first