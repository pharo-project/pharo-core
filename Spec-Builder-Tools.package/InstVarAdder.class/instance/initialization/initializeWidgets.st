initializeWidgets


	self instantiateModels: #(
		nameField TextInputFieldModel
		nameLabel LabelModel
		toolbar OkCancelToolbar
		typeChoice DropListModel
		typeLabel LabelModel ).
	
	nameLabel text: 'Name:'.
	nameField 
		autoAccept: true;
		entryCompletion: nil.
	typeLabel text: 'Class:'.
	
	typeChoice items: ((ComposableModel subclasses sort: [:a :b | a name < b name ]) collect: [: e | DropListItem named: e name do: [ selectedClass contents: e ]]) .
	
	self setFocus