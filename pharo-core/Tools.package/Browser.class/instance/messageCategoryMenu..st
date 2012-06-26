message category functions
messageCategoryMenu: aMenu
	^ aMenu labels:
'Browse
FileOut
Reorganize
Alphabetize
Remove empty categories
Categorize all uncategorized
New Category...
Rename...
Remove'
		lines: #(3 8)
		selections:
		#(buildMessageCategoryBrowser fileOutMessageCategories
		editMessageCategories alphabetizeMessageCategories removeEmptyCategories
		categorizeAllUncategorizedMethods addCategory renameCategory removeMessageCategory)
