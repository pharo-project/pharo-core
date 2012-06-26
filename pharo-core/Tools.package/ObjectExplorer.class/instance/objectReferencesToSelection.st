menus
objectReferencesToSelection
	"Open a browser on all references to the selected instance variable, if that's what currently selected. "
	self systemNavigation
		browseAllObjectReferencesTo: self object
		except: (Array with: self parentObject with: currentSelection with: inspector)
		ifNone: [:obj | self changed: #flash].
