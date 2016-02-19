exampleWithMenu2
	"self exampleWithMenu2"
	| oddMenu evenMenu model |

	oddMenu := MenuModel new
		addGroup: [ :group | 
			group addItem: [ :item |
				item 
					name: 'Odd';
					shortcut: $o meta;
					action: [ self logCr: 'o' ] ] ].

	evenMenu := MenuModel new
		addGroup: [ :group | 
			group addItem: [ :item |
				item 
					name: 'Even';
					shortcut: $e meta;
					action: [ self logCr: 'e' ] ] ].

	model := NewListModel new.
	model openWithSpec.
	model items: (1 to: 10) asOrderedCollection.
	model whenSelectedItemChanged: [ :number |
		number odd
			ifTrue: [ model menu: oddMenu ]
			ifFalse: [ model menu: evenMenu ] ]