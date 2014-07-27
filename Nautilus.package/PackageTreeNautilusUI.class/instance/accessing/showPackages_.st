showPackages: aBoolean
	self okToChange ifFalse: [ ^ nil ].

	list enabled: aBoolean.
	aBoolean ifFalse: [ self basicShowHierarchy ].
		
	listElements := nil.
	self resetClassesList.
	
	"If showPackages false(Hierarchy)-->true(Flat) then selected package needs to synch to that of selected class"
	(aBoolean and: [ self model showPackages not ]) 
		ifTrue: [
			self model showPackages: aBoolean.
			self selectPackageFor: self selectedClass ] 
		ifFalse: [ 	
			self model showPackages: aBoolean ].

	self changed: #groupsButtonLabel.
	self updateClassView.
	self changed: #toggleButtonState.
	self changed: #toggleButtonLabel.
	self changedLabels.