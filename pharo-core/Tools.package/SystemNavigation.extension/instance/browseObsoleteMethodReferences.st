*Tools-Browser
browseObsoleteMethodReferences
	"Open a browser on all referenced behaviors that are obsolete"

	"SystemNavigation default browseObsoleteMethodReferences"

	| list |
	list := self obsoleteMethodReferences.
	^ self 
		browseMessageList: list
		name: 'Method referencing obsoletes'
		autoSelect: nil