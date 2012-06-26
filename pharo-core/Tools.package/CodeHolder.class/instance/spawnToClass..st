commands
spawnToClass: aClass
	"Used to copy down code from a superclass to a subclass in one easy step, if you know what you're doing.  Spawns a new message-category browser for the indicated class, populating it with the source code seen in the current tool."

	| aCategory newBrowser org |	
	(aCategory := self categoryOfCurrentMethod)
		ifNil:
			[self buildClassBrowserEditString: self contents]
		ifNotNil:
			[((org := aClass organization) categories includes: aCategory)
				ifFalse:	[org addCategory: aCategory].
			newBrowser := Smalltalk tools browser new setClass: aClass selector: nil.
			newBrowser selectMessageCategoryNamed: aCategory.
			Smalltalk tools browser openBrowserView: (newBrowser openMessageCatEditString: self contents)
		label: 'category "', aCategory, '" in ', 
				newBrowser selectedClassOrMetaClassName]