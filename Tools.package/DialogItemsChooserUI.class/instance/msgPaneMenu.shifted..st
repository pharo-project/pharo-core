private
msgPaneMenu: aMenu shifted: shifted
	^aMenu addList: #(
		('find...(f)'					find)
		('find again (g)'				findAgain)
		('set search string (h)'		setSearchString)
		-
		('do again (j)'				again)
		('undo (z)'					undo)
		-
		('copy (c)'					copySelection)
		('cut (x)'					cut)
		('paste (v)'					paste)
		('paste...'					pasteRecent)
		-
		('do it (d)'					doIt)
		('print it (p)'					printIt)
		('inspect it (i)'				inspectIt)
		('explore it (I)'				exploreIt)
		('debug it'					debugIt)
		-
		('accept (s)'					accept)
		('cancel (l)'					cancel)
		('implementors (m)'			implementorsOfIt)
		('methods containing (E)'	methodSourceContainingIt)
		('senders (n)' 				sendersOfIt))