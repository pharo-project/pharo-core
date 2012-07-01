system category functions
systemCategoryMenu: aMenu
		
	^ aMenu labels:
'Find Class... (f)
Browse
FileOut
Reorganize
Alphabetize
Update
Add Category...
Rename...
Remove' 
	lines: #(2 4 6 8)
	selections:
		#(findClass buildSystemCategoryBrowser
		fileOutSystemCategory
		editSystemCategories alphabetizeSystemCategories updateSystemCategories
		addSystemCategory renameSystemCategory removeSystemCategory )