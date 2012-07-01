*rpackage-core
packageFromOrganizer: anRPackageOrganizer
	"This method returns the package this method belongs to.  It takes into account classes and traits.  If the method is in no package, returns nil by now"
	^self origin packages detect: [:each | each includesSelector: self selector ofClassName: self origin originalName ] ifNone: [ nil ].