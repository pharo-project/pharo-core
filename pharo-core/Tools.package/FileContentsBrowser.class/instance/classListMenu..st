menus
classListMenu: aMenu

	^ aMenu 
		labels:
'Definition
Comment
Browse full (b)
Class refs (N)
FileIn
FileOut
Rename...
Remove
Remove existing'
		lines: #(2 4 6 8)
		selections: #(editClass editComment browseMethodFull browseClassRefs fileInClass fileOutClass renameClass removeClass removeUnmodifiedCategories) 

