findClass: aSearchInstance
	"select the class returned by the search block"
	| aClass |
	self okToChange ifFalse: [^ self flashPackage ].
	aClass := aSearchInstance chooseFromOwner: self window.
	aClass ifNil: [^ self flashPackage].
	self showGroups: false.
	self selectedPackage: (self parentOfClass: aClass).
	self selectedClass: aClass.
	self updatePackageGroupAndClassList