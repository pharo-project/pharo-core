privCleanStartUpList

	#( #NaturalLanguageTranslator 
	 	#ShortIntegerArray #ShortRunArray #WorldMorph #SecurityManager 
		 #FreeTypeFontProvider  #UUIDGenerator #ProcessBrowser 
		 #CPUWatcher #DateAndTime #HostSystemMenus #MenuIcons
		 #InternetConfiguration  #CommandHistory #HostWindowProxy #FreeTypeSettings 
		 #UITheme #CodeLoader #ZnServer #MCWorkingCopy #RecentMessageList 
		 #EditorFindReplaceDialogWindow #CodeUpdate) 
	do: [:className |
		Smalltalk removeFromStartUpList: (Smalltalk classNamed: className)].