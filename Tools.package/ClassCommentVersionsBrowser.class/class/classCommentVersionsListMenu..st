menu
classCommentVersionsListMenu: aBuilder
	<contextMenu>
	<classCommentVersionsListMenu>

	| target |

	target := aBuilder model.
	
	(aBuilder item: #'Compare to current')
		help: 'Compare selected version to the current version';
		target: target;
		selector: #compareToCurrentVersion.

	(aBuilder item: #'Revert to selected version')
		help: 'Resubmit the selected version, so that it becomes the current version';
		target: target;
		selector: #fileInSelections.

	(aBuilder item: #'Remove from changes')
		help: 'Remove this method from the current change set, if present';
		target: target;
		selector: #removeMethodFromChanges.

	(aBuilder item: #'Toggle diffing')
		keyText: 'D';
		help: 'Toggle whether or not diffs should be shown here';
		target: target;
		selector: #toggleDiffing.

	(aBuilder item: #'Update list')
		help: 'Reformulate the list of versions, in case it somehow got out of synch with reality';
		target: target;
		selector: #reformulateList.

	(aBuilder item: #'Help...')
		help: 'Provide an explanation of the use of this tool';
		target: target;
		selector: #offerVersionsHelp.
	