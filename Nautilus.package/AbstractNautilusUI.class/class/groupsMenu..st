menu
groupsMenu: aBuilder
	<nautilusGroupMenu>
	| target |
	target := aBuilder model.
	target selectedGroup ifNil: [ ^ target ].
		
	(aBuilder item: #'Browse scoped (b, s)')
		action: [ target restrictedBrowseGroups: target selectedGroups ];
		order: 1000;
		withSeparatorAfter.
		
	(aBuilder item: #'Run tests (j, g)')
		action: [ target runTestsOfGroups: target selectedGroups notifying: true ];
		order: 1100.
				
	(aBuilder item: #'Merge groups')
		action: [target mergeGroups];
		enabledBlock: [ target selectedGroups size > 1];
		order: 1200.

	target selectedGroup isNil
		ifFalse: [
			target selectedGroup isReadOnly
				ifFalse: [
					(aBuilder item: #'Rename... (r, g)')
						action: [target renameGroup];
						enabledBlock: [ target selectedGroups size <= 1];
						order: 1300 ].
			target selectedGroup removable
				ifTrue: [
					(aBuilder item: #'Remove groups (x, g)')
						icon: (target iconClass iconNamed: #removeIcon);
						action: [target removeGroups];
						order: 1400 ]]