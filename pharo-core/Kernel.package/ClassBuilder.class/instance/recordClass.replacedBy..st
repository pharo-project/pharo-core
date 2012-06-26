private
recordClass: oldClass replacedBy: newClass
	"Keep the changes up to date when we're moving instVars around"
	(instVarMap includesKey: oldClass name) ifTrue:[
		SystemChangeNotifier uniqueInstance classDefinitionChangedFrom: oldClass to: newClass.
	].