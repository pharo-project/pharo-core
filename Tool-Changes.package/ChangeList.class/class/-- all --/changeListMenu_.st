changeListMenu: aBuilder
	<contextMenu>
	<changeListMenu>
	
	| target |
	
	target := aBuilder model.
	
	(aBuilder item: #'FileIn selections')
		help: 'Import the selected items into the image';
		target: target;
		selector: #fileInSelections.
	(aBuilder item: #'FileOut selections...')
		help: 'Create a new file containing the selected items';
		target: target;
		selector: #fileOutSelections;
		withSeparatorAfter.
	
	(aBuilder item: #'Compare to current')
		help: 'Open a separate window which shows the text differences between the on-file version and the in-image version';
		target: target;
		selector: #compareToCurrentVersion.
	(aBuilder item: #'Toggle diffing')
		keyText: 'D';
		help: 'Start or stop showing diffs in the code pane';
		target: target;
		selector: #toggleDiffing;
		withSeparatorAfter.
		
	(aBuilder item: #'Select conflicts with any changeset')
		help: 'Select methods in the file which also occur in any change-set in the system';
		target: target;
		selector: #selectAllConflicts.
	(aBuilder item: #'Select conflicts with current changeset')
		help: 'Select methods in the file which also occur in the current change-set';
		target: target;
		selector: #selectConflicts.
	(aBuilder item: #'Select conflicts with...')
		help: 'Allows you to designate a file or change-set against which to check for code conflicts';
		target: target;
		selector: #selectConflictsWith;
		withSeparatorAfter.
		
	(aBuilder item: #'Select unchanged definitions')
		help: 'Select class definitions, class comments and methods in the file whose in-image versions are the same as their in-file counterparts';
		target: target;
		selector: #selectUnchangedDefinitions.
	(aBuilder item: #'Select unchanged methods')
		help: 'Select methods in the file whose in-image versions are the same as their in-file counterparts';
		target: target;
		selector: #selectUnchangedMethods.
	(aBuilder item: #'Select new methods')
		help: 'Select methods in the file that do not current occur in the image';
		target: target;
		selector: #selectNewMethods.
	(aBuilder item: #'Select methods for this class')
		help: 'Select all methods in the file that belong to the currently-selected class';
		target: target;
		selector: #selectMethodsForThisClass.
	(aBuilder item: #'Select methods for classes in image')
		help: 'Select all methods in the file that belong to a class that exists in the image';
		target: target;
		selector: #selectMethodsForExtantClasses.
	(aBuilder item: #'Select changes with contents matching')
		help: 'Select all changes in the file whose text includes a pattern';
		target: target;
		selector: #selectContentsMatching;
		withSeparatorAfter.
		
	(aBuilder item: #'Select all')
		keyText: 'a';
		help: 'Select all the items in the list';
		target: target;
		selector: #selectAll.
	(aBuilder item: #'Deselect all')
		help: 'Deselect all the items in the list';
		target: target;
		selector: #deselectAll.
	(aBuilder item: #'Invert selections')
		help: 'Select every item that is not currently selected, and deselect every item that *is* currently selected';
		target: target;
		selector: #invertSelections;
		withSeparatorAfter.
		
	(aBuilder item: #'Browse all versions of single selection')
		help: 'Open a version browser showing the versions of the currently selected method';
		target: target;
		selector: #browseVersions.
	(aBuilder item: #'Browse all versions of selections')
		help: 'Open a version browser showing all the versions of all the selected methods';
		target: target;
		selector: #browseAllVersionsOfSelections.
	(aBuilder item: #'Browse current versions of selections')
		help: 'Open a message-list browser showing the current (in-image) counterparts of the selected methods';
		target: target;
		selector: #browseCurrentVersionsOfSelections.
		
	(aBuilder item: #'Remove doIts')
		help: 'Remove all items that are doIts rather than methods';
		target: target;
		selector: #removeDoIts.
	(aBuilder item: #'Remove older versions')
		help: 'Remove all but the most recent versions of methods in the list';
		target: target;
		selector: #removeOlderMethodVersions.
	(aBuilder item: #'Remove up-to-date versions')
		help: 'Remove all items whose code is the same as the counterpart in-image code';
		target: target;
		selector: #removeExistingMethodVersions.
	(aBuilder item: #'Remove selected items')
		help: 'Remove the selected items from the change-list';
		target: target;
		selector: #removeSelections.
	(aBuilder item: #'Remove unselected items')
		help: 'Remove all the items not currently selected from the change-list';
		target: target;
		selector: #removeNonSelections.
