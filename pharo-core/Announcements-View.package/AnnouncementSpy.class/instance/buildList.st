building
buildList 

	^ (PluggableListMorph new)
				on: self 
				list: #announcements
				selected: #index
				changeSelected: #index:
				menu: #buildMenu: 
				keystroke: nil.
	