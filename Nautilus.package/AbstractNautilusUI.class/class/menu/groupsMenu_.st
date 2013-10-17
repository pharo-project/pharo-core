groupsMenu: aBuilder
	<contextMenu>
	<nautilusGlobalGroupMenu>
	| target |
	
	target := aBuilder model.
	target selectedGroup ifNil: [ ^ target ].
		
	(aBuilder item: #'Browse scoped')
		keyText: 'b, s' if: Nautilus useOldStyleKeys not;
		action: [ target restrictedBrowseGroups: target selectedGroups ];
		order: 1000;
		withSeparatorAfter.
		
	(aBuilder item: #'Run tests')
		keyText: 'j, g' if: Nautilus useOldStyleKeys not;
		keyText: 't' if: Nautilus useOldStyleKeys;
		action: [ target runTestsOfGroups: target selectedGroups notifying: true ];
		order: 1100.
				
	(aBuilder item: #'Merge groups')
		action: [target mergeGroups];
		enabledBlock: [ target selectedGroups size > 1];
		order: 1200.

	target selectedGroup
		ifNotNil: [
			target selectedGroup isReadOnly
				ifFalse: [
					(aBuilder item: #'Rename...')
						keyText: 'r, g' if: Nautilus useOldStyleKeys not;
						keyText: 'r' if: Nautilus useOldStyleKeys;
						action: [ target renameGroup ];
						enabledBlock: [ target selectedGroups size <= 1];
						order: 1300 ].
			target selectedGroup removable
				ifTrue: [
					(aBuilder item: #'Remove groups')
						keyText: 'x, g' if: Nautilus useOldStyleKeys not;
						keyText: 'x' if: Nautilus useOldStyleKeys;
						icon: (Smalltalk ui icons iconNamed: #removeIcon);
						action: [target removeGroups];
						order: 1400 ] ]