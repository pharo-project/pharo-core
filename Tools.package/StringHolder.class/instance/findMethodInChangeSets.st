*Tools
findMethodInChangeSets
	"Find and open a changeSet containing the current method."

	| aName |
	(aName := self selectedMessageName) ifNotNil: [
		Smalltalk tools changeSorter browseChangeSetsWithClass: self selectedClassOrMetaClass
					selector: aName]