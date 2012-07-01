system category functions
systemCatSingletonMenu: aMenu

	^ aMenu labels:
'browse
fileOut
update
rename...
remove' 
	lines: #(2 4)
	selections:
		#(buildSystemCategoryBrowser
		fileOutSystemCategory updateSystemCategories
		renameSystemCategory removeSystemCategory)
