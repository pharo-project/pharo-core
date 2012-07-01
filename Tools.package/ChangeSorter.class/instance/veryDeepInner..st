creation
veryDeepInner: deepCopier
	"Copy all of my instance variables.  Some need to be not copied at all, but shared."

super veryDeepInner: deepCopier.
"parent := parent.		Weakly copied"
"myChangeSet := myChangeSet.		Weakly copied"
currentClassName := currentClassName veryDeepCopyWith: deepCopier.
"currentSelector := currentSelector.		Symbol"
priorChangeSetList := priorChangeSetList veryDeepCopyWith: deepCopier.
changeSetCategory := changeSetCategory.

