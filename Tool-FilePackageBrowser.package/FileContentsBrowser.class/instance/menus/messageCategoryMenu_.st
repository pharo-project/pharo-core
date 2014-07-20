messageCategoryMenu: aMenu
	^aMenu addList: #(
		('FileIn'					fileInMessageCategories)
		('FileOut'				fileOutMessageCategories)
		-
		('Reorganize'			editMessageCategories)
	     -
		('Add item...'			addCategory)				
		('Rename...'				renameCategory)	
		('Remove'				removeMessageCategory)	
		('Remove existing'		removeUnmodifiedMethods))