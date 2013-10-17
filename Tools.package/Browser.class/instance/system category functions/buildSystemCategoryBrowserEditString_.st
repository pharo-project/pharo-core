buildSystemCategoryBrowserEditString: aString 
	"Create and schedule a new system category browser with initial textual 
	contents set to aString."

	| newBrowser |
	systemCategoryListIndex > 0
		ifTrue: 
			[newBrowser := self class new.
			newBrowser systemCategoryListIndex: systemCategoryListIndex.
			newBrowser setClass: self selectedClassOrMetaClass selector: self selectedMessageName.
			self class openBrowserView: (newBrowser openSystemCatEditString: aString)
				label: 'Classes in category ', newBrowser selectedSystemCategoryName]