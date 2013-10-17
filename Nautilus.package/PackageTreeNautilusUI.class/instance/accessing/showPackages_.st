showPackages: aBoolean
	self okToChange ifFalse: [ ^ nil ].

	list enabled: aBoolean.
	aBoolean ifFalse: [ self basicShowHierarchy ].
		
	listElements := nil.
	list2Elements := nil.
	self model showPackages: aBoolean.
	self changed: #groupsButtonLabel.
	self updateClassView.
	self changed: #toggleButtonState.
	self changed: #toggleButtonLabel.
	self changedLabels.