message category functions
buildMessageCategoryBrowserEditString: aString 
	"Create and schedule a message category browser for the currently 
	selected message category. The initial text view contains the characters 
	in aString."

	| newBrowser |
	messageCategoryListIndex ~= 0
		ifTrue: 
			[newBrowser := self class new.
			newBrowser systemCategoryListIndex: systemCategoryListIndex.
			newBrowser classListIndex: (newBrowser classList indexOf: self selectedClassName).
			newBrowser metaClassIndicated: metaClassIndicated.
			newBrowser messageCategoryListIndex: messageCategoryListIndex.
			newBrowser messageListIndex: messageListIndex.
			self class openBrowserView: (newBrowser openMessageCatEditString: aString)
				label: 'Message Category Browser (' , 
						newBrowser selectedClassOrMetaClassName , ')']