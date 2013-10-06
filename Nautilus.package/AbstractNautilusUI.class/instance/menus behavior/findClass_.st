findClass: aSearchInstance
	"select the class returned by the search block"
	| aClass recentList |
	self okToChange ifFalse: [^ self flashPackage ].
	aClass := aSearchInstance chooseFromOwner: self window.
	aClass ifNil: [^ self flashPackage].
	self showGroups: false.
	self selectedPackage: aClass package.
	self selectedClass: aClass.
	self updateBothView