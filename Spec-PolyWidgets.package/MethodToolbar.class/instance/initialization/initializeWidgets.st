initializeWidgets
	
	browseModel := self newButton.
	sendersModel := self newButton.
	implementorsModel := self newButton.
	versionModel := self newButton.
	dropListModel := self newDropList.
				
	self 
		setFocusOrder;
		setBrowseModel;
		setVersionModel;
		setSendersModel;
		setImplementorsModel
