menus
messageCategoryMenu: aMenu

	^ aMenu 
		labels:
'FileIn
FileOut
Reorganize
Add item...
Rename...
Remove
Remove existing'
		lines: #(2 3 6)
		selections: #(fileInMessageCategories fileOutMessageCategories editMessageCategories addCategory renameCategory removeMessageCategory removeUnmodifiedMethods)