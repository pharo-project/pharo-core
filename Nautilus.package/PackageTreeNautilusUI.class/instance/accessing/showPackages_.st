showPackages: aBoolean
	self okToChange ifFalse: [ ^ nil ].

	self packageWidget enabled: aBoolean.
	aBoolean ifFalse: [ self basicShowHierarchy ].
		
	self resetPackagesList.
	self resetClassesList.
	
	"If showPackages false(Hierarchy)-->true(Flat) then selected package needs to synch to that of selected class"
	(aBoolean and: [ self model showPackages not ]) 
		ifTrue: [
			self selectPackageFor: self selectedClass ].
	self model showPackages: aBoolean.
	self classWidget showHierarchy: aBoolean not.

	self changed: #groupsButtonLabel.
	self updateClassView.
	self changed: #hierarchyButtonState.
	self changed: #hierarchyButtonLabel.
	self changedLabels.