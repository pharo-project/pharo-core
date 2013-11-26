showGroups: aBoolean
	self okToChange ifFalse: [ ^ self ].
	self showGroups = aBoolean ifTrue: [ ^ self ].
	
	self model selectedPackage: nil.
	self clearPackageSelections.
	self model showGroups: aBoolean.
	self updatePackageView.
	self updateClassView.
	