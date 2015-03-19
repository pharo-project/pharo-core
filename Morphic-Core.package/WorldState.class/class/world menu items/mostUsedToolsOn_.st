mostUsedToolsOn: aBuilder   
	<worldMenu>
	(aBuilder group: #MostUsedTools)
		withSeparatorAfter;
		order: 0;
		with: [
			(aBuilder item: #'System Browser') 
				action: [Smalltalk tools openClassBrowser]; 
				icon: Smalltalk tools browser taskbarIcon.
			(aBuilder item: Smalltalk tools workspace title asSymbol) 
				action: [Smalltalk tools openWorkspace]; 
				icon: Smalltalk tools workspace taskbarIcon.
			
			Smalltalk globals at: #TestRunner ifPresent: [ :class |
				(aBuilder item: #'Test Runner') 
					action: [Smalltalk tools openTestRunner]; 
					icon: class taskbarIcon.
			].
			(aBuilder item: #'Monticello Browser') 
				action: [Smalltalk tools openMonticelloBrowser]; 
				icon: Smalltalk tools monticelloBrowser taskbarIcon]