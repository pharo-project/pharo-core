context stack menu
postMortemStackActionMenu: aMenu
	
	^ aMenu addList: #(
		('FullStack (f)' 	fullStack)
		('Where (w)' 	where)).
