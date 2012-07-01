class list
fileOutClass
	"this is a hack!! makes a new change set, called the class name, adds author initials to try to make a unique change set name, files it out and removes it. kfr 16 june 2000" 
	| aSet |
	"File out the selected class set."
     aSet := ChangeSet newChangeSet: currentClassName.
	aSet absorbClass: self selectedClassOrMetaClass name from: myChangeSet.
	aSet fileOut.
	ChangeSet removeChangeSet: aSet.
	parent modelWakeUp.	"notice object conversion methods created"

