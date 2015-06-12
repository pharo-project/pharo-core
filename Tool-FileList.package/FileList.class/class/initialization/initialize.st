initialize
	"FileList initialize"
	(self systemNavigation allClassesImplementing: #fileReaderServicesForFile:suffix:) do: 		[:providerMetaclass |
			self registerFileReader: providerMetaclass soleInstance]