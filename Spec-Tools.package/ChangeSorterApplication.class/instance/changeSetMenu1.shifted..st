menu
changeSetMenu1: aMenu shifted: isShifted 
	"Set up aMenu to hold commands for the change-set-list pane.  This could be for a single or double changeSorter"
	
	aMenu 
		title: 'Change Set';
		target: self.
		
	self selectedChangeSet
		ifNotNil:[
			aMenu
				add: 'Make changes go to me (m)'
				action: #setCurrentChangeSet;
				addLine;
				add: 'New change set... (n)'
				action: #newSet ].
	aMenu
		add: 'Find...(f)' 
		action: #findChangeSet.

	self selectedChangeSet
		ifNotNil:[
			aMenu
				addLine;
				add: 'Rename change set (r)'
				action: #rename;
				add: 'File out (o)'
				action: #fileOut;
				add: 'Browse methods (b)' 
				action: #browseChangeSet;
				add: 'Browse change set (B)'
				action: #openChangeSetBrowser;
				addLine ]