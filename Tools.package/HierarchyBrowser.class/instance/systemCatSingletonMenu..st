menu messages
systemCatSingletonMenu: aMenu
	^aMenu addList: #(
		('Find class... (f)'		findClass)
		-
		('Browse'				buildSystemCategoryBrowser)
		('FileOut'				fileOutSystemCategory)
		('Update'				updateSystemCategories)
		-
		('Rename...'				renameSystemCategory)
		('Remove' 				removeSystemCategory)).