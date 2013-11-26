resetShowHierarchy
	"If I'm showing hierarchy, going back to show simple class list"
	self model showHierarchy ifFalse: [ ^ self ].
	self showPackages: true.