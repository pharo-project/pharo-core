menu commands
objectReferencesToSelection
	"Open a list inspector on all the objects that point to the value of the selected instance variable, if any.  "

	self selectionIndex = 0 ifTrue: [^ self changed: #flash].
	self systemNavigation
		browseAllObjectReferencesTo: self selection
		except: (Array with: self object)
		ifNone: [:obj | self changed: #flash].
