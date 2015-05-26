initializeWidgets

	| serializedErrors |
	self instantiateModels: #(
		errorListModel #ListModel
		debugButton ButtonModel
		browseButton ButtonModel
		vmVersionLabel LabelModel
		vmVersion TextModel
		timeStampLabel LabelModel
		timeStamp TextModel
		imageVersionLabel LabelModel
		imageVersion TextModel).
		
	serializedErrors := self selectTestFailures.
	
	errorListModel
		items: serializedErrors;
		displayBlock: [ :e | e base copyReplaceAll: '-' with: '>>#' ].
	serializedErrors isEmpty ifFalse: [ errorListModel setSelectedIndex: 1 ].
	
	vmVersionLabel label: 'VM Version'.
	vmVersion text: ''; enabled: false.
	timeStampLabel label: 'Timestamp'.
	timeStamp text: ''; enabled: false.	
	imageVersionLabel label: 'Image Version'.
	imageVersion text: ''; enabled: false.	
		
	debugButton
		label: 'Debug';
		action: [ self materialize: errorListModel selectedItem ].

	browseButton
		label: 'Browse';
		action: [ self browse: errorListModel selectedItem ].
		
	self focusOrder
		add: debugButton;
		add: browseButton;
		add: errorListModel.