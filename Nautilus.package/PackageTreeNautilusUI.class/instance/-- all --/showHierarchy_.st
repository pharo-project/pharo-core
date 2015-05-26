showHierarchy: aBoolean
	self okToChange ifFalse: [ ^ nil ].

	self packageWidget enabled: aBoolean not.
	aBoolean ifTrue: [ self basicShowHierarchy ].
		
	self resetPackageGroupsList.
	self resetClassesList.
	
	self classWidget showHierarchy: aBoolean.
	"If showPackages false(Hierarchy)-->true(Flat) then selected package needs to synch to that of selected class"
	((aBoolean not and: [ self model showHierarchy]) and: [self selectedClass notNil]) 
		ifTrue: [
			self selectPackageFor: self selectedClass ].
	self model showHierarchy: aBoolean.

	self changed: #groupsButtonLabel.
	self updateClassView.
	self changed: #hierarchyButtonState.
	self changed: #hierarchyButtonLabel.
	self changedLabels.