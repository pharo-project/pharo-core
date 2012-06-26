menu messages
systemCatSingletonMenu: aMenu

	^ aMenu labels:
'Find class... (f)
Browse
FileOut
Update
Rename...
Remove' 
	lines: #(1 4)
	selections:
		#(findClass buildSystemCategoryBrowser
		 fileOutSystemCategory updateSystemCategories
		 renameSystemCategory removeSystemCategory )
