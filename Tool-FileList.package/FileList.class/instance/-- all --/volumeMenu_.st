volumeMenu: aMenu
	aMenu 
		add: 'Recent...'  selector:	#recentDirs;
		addLine;
		add: 'Delete directory...' selector: #deleteDirectory; 
		addLine.
	aMenu
		addServices: (self itemsForDirectory: self directory)
		for: self
		extraLines: #().
	^aMenu.