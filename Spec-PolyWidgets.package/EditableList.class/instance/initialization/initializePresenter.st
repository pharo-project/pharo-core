initializePresenter
	super initializePresenter
	
	addButton action: [ | requirement | 
						requirement := addItemBlock value.
						requirement ifNotNil: [ 
							self list: (self list getItems copyWith: requirement) ] ].

	removeButton
		action: [ self list: (list getItems copyWithoutIndex: list selectedIndex) ].
		
	topButton
		action: [ self moveElementAt: list selectedIndex to: 1 ].
	bottomButton
		action: [ self moveElementAt: list selectedIndex to: list getItems size ].
	upButton
		action: [ self moveElementAt: list selectedIndex to: list selectedIndex - 1].
	downButton
		action: [ self moveElementAt: list selectedIndex to: list selectedIndex + 1].
