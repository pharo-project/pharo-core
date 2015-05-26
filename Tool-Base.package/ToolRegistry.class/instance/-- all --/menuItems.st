menuItems
	"Answer the menu items available for this tool set"

	^#(
		('System Browser' 			#openClassBrowser)
		-
		('Workspace'				#openWorkspace)
		('Transcript' 				#openTranscript)
		('File Browser'				#openFileList)
		-
		('Test Runner'				#openTestRunner)
		('Process Browser' 			#openProcessBrowser)
		-
		('Monticello Browser'		#openMonticelloBrowser)
		('Recover lost changes...'	#openRecentChangesLog)
		('Change Sorter'			#openChangeSorter)
	)
