initialization
initializeWidgets

	self instantiateModels: #(
		list ListComposableModel
		picklist PickListModel
		text TextModel
		okCancelToolbar OkCancelToolbar
		addButton ButtonModel
		removeButton ButtonModel ).

	
	list displayBlock: [:e | e name ].
	picklist labelClickable: false.
	text aboutToStyle: true.
	text enabled: false.
	okCancelToolbar okAction: [ self accept ].

	addButton
		label: '+';
		state: false.
		
	removeButton
		label: '-';
		state: false.