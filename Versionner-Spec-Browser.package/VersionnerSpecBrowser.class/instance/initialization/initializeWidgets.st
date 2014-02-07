initializeWidgets
	"configurations"
	configurationList := (self instantiate: NewListModel)
		icons: [ :configuration | self iconForConfiguration: configuration ];
		displayBlock: [:item | item asStringMorph ]; 
		iconMaxSize: 16@16;
		handlesDoubleClick: true;
		on: $b command do: [ configurationList selectedItem ifNotNilDo: [ :selection | selection configurationClass browse ] ];
		doubleClickAction: [ configurationList selectedItem ifNotNilDo: [ :selection | 
				self browseConfiguration: selection ] ];
		yourself.
	
	"toolbar"
	toolbar := self instantiate: VersionnerToolBar.