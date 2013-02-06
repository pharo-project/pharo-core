menu
versionsBrowserListMenu: aBuilder
	<contextMenu>
	<versionsBrowserListMenu>
	
	| target |
	
	target := aBuilder model.
	target listIndex > 0 ifTrue: [
		target listIndex > 1 ifTrue: [
			(aBuilder item: #'Compare to current')
				help: 'Compare selected version to the current version';
				target: target;
				selector: #compareToCurrentVersion.

			(aBuilder item: #'Compare to version...')
				help: 'Compare selected version to another selected version';
				target: target;
				selector: #compareToOtherVersion ].
		
		(aBuilder item: #'Revert to selected version')
			help: 'Resubmit the selected version, so that it becomes the current version';
			target: target;
			selector: #fileInSelections ].
	
	(aBuilder item: #'Remove from changes')
		help: 'Remove this method from the current change set, if present';
		target: target;
		selector: #removeMethodFromChanges;
		withSeparatorAfter.
	
	(aBuilder item: #'Toggle diffing')
		keyText: 'D';
		help: 'Toggle whether or not diffs should be shown here';
		target: target;
		selector: #toggleDiffing.
	
	(aBuilder item: #'Update list')
		help: 'Reformulate the list of versions, in case it somehow got out of synch with reality';
		target: target;
		selector: #reformulateList;
		withSeparatorAfter.
		
	(aBuilder item: #'Senders')
		keyText: 'n';
		help: 'Browse all senders of this selector';
		target: target;
		selector: #browseSenders.
	
	(aBuilder item: #'Implementors')
		keyText: 'm';
		help: 'Browse all implementors of this selector';
		target: target;
		selector: #browseImplementors;
		withSeparatorAfter.
	
	(aBuilder item: #'Help...')
		help: 'Provide an explanation of the use of this tool';
		target: target;
		selector: #offerVersionsHelp.
