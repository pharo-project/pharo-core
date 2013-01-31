system category functions
systemCategoryMenu: aMenu
	^ aMenu addList: #(
		('Find Class... (f)'				findClass)
		('Browse'						buildSystemCategoryBrowser)
		-
		('FileOut'						fileOutSystemCategory)
		('Reorganize'					editSystemCategories)
		-
		('Alphabetize'					alphabetizeSystemCategories)
		('Update'						updateSystemCategories)
		-
		('Add Category...'				addSystemCategory)
		('Rename...'						renameSystemCategory)
		-
		('Remove'						removeSystemCategory))