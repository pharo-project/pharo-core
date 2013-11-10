customMenuActions
	^ [:aMenu :currentGroup |
		currentGroup addItem: [ :item |
			item
				name: 'Dive Into' translated;
				action: [ self dive ];
				shortcut: $d command mac | $d ctrl ].
	
		(history hasPrevious or: [ history hasNext ])
			ifTrue: [ 
				aMenu addGroup: [ :aGroup |
					history hasPrevious ifTrue: [ 
						aGroup addItem: [ :item |
							item
								name: 'Back' translated;
								action: [ self inspectPrevious ];
								shortcut: $[ command mac | $[ ctrl ] ].
							
					history hasNext ifTrue: [ 
						aGroup addItem: [ :item |
							item
								name: 'Forward' translated;
								action: [ self inspectNext ];
								shortcut: $] command mac | $] ctrl ] ] ] ] ]