menu
groupsMenu: aBuilder
	<contextMenu>
	<nautilusGlobalGroupMenu>
	| target |
	target := aBuilder model.
	target selectedGroup ifNil: [ ^ target ].
		
	(aBuilder item: #'Browse scoped')
		keyText: 'b, s';
		action: [ target restrictedBrowseGroups: target selectedGroups ];
		order: 1000;
		withSeparatorAfter.
		
	(aBuilder item: #'Run tests')
		keyText: 'j, g';
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
					(aBuilder item: #'Rename...')
						keyText: 'r, g';
						action: [target renameGroup];
						enabledBlock: [ target selectedGroups size <= 1];
						order: 1300 ].
			target selectedGroup removable
				ifTrue: [
					(aBuilder item: #'Remove groups')
						keyText: 'x, g';
						icon: (target iconClass iconNamed: #removeIcon);
						action: [target removeGroups];
						order: 1400 ] ]