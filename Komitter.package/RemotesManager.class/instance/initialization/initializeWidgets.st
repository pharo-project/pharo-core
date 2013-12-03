initializeWidgets

	packages := self instantiate: SearchableTree.
	remotes := self newTree.
	addRemote := self newButton.
	removeRemote := self newButton.

	packages displayBlock: [ :each | each packageName ].

	remotes
		beCheckList;
		autoMultiSelection: true;
		displayBlock: [ :item | item label ];
		iconBlock: [ :item | item icon ];
		roots: self buildRoots.
		
	addRemote 
		icon: self addRemoteIcon;
		action: [ self addRepository ].
		
	removeRemote
		icon: self removeRemoteIcon;
		action: [ self removeRepository ];
		enabled: false.
		
	self focusOrder
		add: packages;
		add: remotes;
		add: removeRemote;
		add: addRemote