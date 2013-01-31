system category functions
systemCatSingletonMenu: aMenu

	^ aMenu addList: #(
		('browse'			buildSystemCategoryBrowser)
		('fileOut'			fileOutSystemCategory)
		-
		('update'			updateSystemCategories)
		('rename...'			renameSystemCategory)
		-
		('remove'			removeSystemCategory))