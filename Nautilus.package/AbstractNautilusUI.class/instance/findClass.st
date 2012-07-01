menus behavior
findClass
	"Search for a class from a pattern or from the recent list"
	| aClass recentList |
	self okToChange ifFalse: [^ self flashPackage ].
	aClass := SearchFacade classSearch chooseFromOwner: self window .
	aClass ifNil: [^ self flashPackage].
	self showGroups: false.
	self selectedPackage: aClass package.
	self selectedClass: aClass.
	self updateBothView