browseSelectedProject
	^ projectList selectedItem ifNotNilDo: [ :selection | self browseProject: selection content configurationClass ]