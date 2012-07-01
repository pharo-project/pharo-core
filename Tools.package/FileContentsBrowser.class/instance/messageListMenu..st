menus
messageListMenu: aMenu

	^ aMenu 
		labels:
'FileIn
FileOut
Senders (n)
Implementors (m)
Method inheritance (h)
Versions (v)
Remove'
		lines: #(2 6)
		selections: #(fileInMessage fileOutMessage
browseSenders browseImplementors methodHierarchy browseVersions
removeMessage).