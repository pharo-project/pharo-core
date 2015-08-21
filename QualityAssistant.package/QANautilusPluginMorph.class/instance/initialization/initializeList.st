initializeList
	listMorph := NonfocusablePluggableIconListMorph new
		model: self;
		getListSelector: #getCritics;
		setIndexSelector:  #selected:;
		wrapSelector: #displayCritic:;
		hideHScrollBarIndefinitely: true;
		getIconSelector: #iconFor:at:;
		vResizing: #spaceFill; 
		hResizing: #spaceFill;
		backgroundColoringBlockOrSelector: [ :item :index |
			index odd
				ifTrue:  [ Smalltalk ui theme backgroundColor ]
				ifFalse: [ Smalltalk ui theme lightBackgroundColor ] ];
		yourself.
		