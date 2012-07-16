access
changeSetName

	^  self changeSetList indexOf: myChangeSet name ifAbsent: [ 0 ]