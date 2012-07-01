menu
menuItems
	"Answer the menu items available for this tool set"

	^#(
		('System Browser' 			#openClassBrowser)
		('Message Names'			#openMessageNames)
		-
		('Workspace'				#openWorkspace)
		('Transcript' 				#openTranscript)
		('File Browser'				#openFileList)
		-
		('Test Runner'				#openTestRunner)
		('Process Browser' 			#openProcessBrowser)
		-
		('Monticello Browser'		#openMonticelloBrowser)
		"('Monticello Configurations' #openMonticelloConfigurations)"
		('Recover lost changes...'	#openRecentChangesLog)
		"('Simple Change Sorter'		#openChangeSorter)"
		('Change Sorter'				#openDualChangeSorter)
	)
