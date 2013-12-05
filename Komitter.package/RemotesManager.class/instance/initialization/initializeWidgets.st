initializeWidgets

	packages := self instantiate: SearchableTree.
	remotes := self newTree.
	addRemote := self newButton.
	removeRemote := self newButton.
	editRemote := self newButton.

	packages displayBlock: [ :each | each packageName ].

	remotes
		beCheckList;
		removeOnlyLastSelected: true; 
		autoMultiSelection: true;
		displayBlock: [ :item | item label ];
		iconBlock: [ :item | item icon ];
		roots: self buildRoots.
		
	addRemote 
		icon: self addRemoteIcon;
		action: [ self addRemote ];
		help: 'Add a new remote'.
		
	removeRemote
		icon: self removeRemoteIcon;
		action: [ self removeRemote ];
		enabled: false;
		help: 'Remote the selected remote'.
		
	editRemote
		icon: self editRemoteIcon;
		action: [ self editRemote ];
		enabled: false;
		help: 'Edit the selected remote'.
		
	self focusOrder
		add: packages;
		add: remotes;
		add: removeRemote;
		add: addRemote