menu commands
browseClass
	"Open an class browser on this class and method"

	^ self selectedClassOrMetaClass ifNotNil: [
		Smalltalk tools browser newOnClass: self selectedClassOrMetaClass ]