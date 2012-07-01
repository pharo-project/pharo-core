*Tools
defaultDesktopCommandKeyTriplets
	"Answer a list of triplets of the form
		<key> <receiver> <selector>   [+ optional fourth element, a <description> for use in desktop-command-key-help]
that will provide the default desktop command key handlers.  If the selector takes an argument, that argument will be the command-key event"
 
	^ {
		{ $r.	ActiveWorld.						#restoreMorphicDisplay.					'Redraw the screen'}.		
		{ $b.	Smalltalk tools browser.			#open.										'Open a new System Browser'}.
		{ $k.	Smalltalk tools.						#openWorkspace.							'Open a new, blank Workspace'}.
		{ $t.	Smalltalk tools.						#openTranscript.							'Make a System Transcript visible'}.
		{ $C.	self.								#findAChangeSorter:.						'Make a Change Sorter visible'}.
		{ $R.	self. 								#openRecentSubmissionsBrowser:.			'Make a Recent Submissions browser visible'}.
		{ $W.	Smalltalk tools. 						#openFinder.						            'Open a new Finder'}.
		{ $Z.	ChangeList. 						#browseRecentLog.						'Browse recently-logged changes'}.
		{ $\.	SystemWindow. 					#sendTopWindowToBack.					'Send the top window to the back'}.
	}.
