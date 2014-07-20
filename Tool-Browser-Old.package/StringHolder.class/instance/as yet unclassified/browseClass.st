browseClass
	"Open an class browser on this class and method"

	^ self selectedClassOrMetaClass 
				ifNotNil: [:class |
					Smalltalk tools browser 
						newOnClass: class 
						selector: self selectedMessageName ]