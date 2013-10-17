compareToCurrentVersion
	"If the current selection corresponds to a method in the system, then spawn a window showing the diffs"

	| change class s1 s2 |
	listIndex = 0 ifTrue: [^ self].
	change := changeList at: listIndex.
	((class := change methodClass) notNil
			and: [ class includesSelector: change methodSelector])
		ifTrue: [ 
			s1 := (class sourceCodeAt: change methodSelector) asString.
			s2 := change string.
			s1 = s2
				ifTrue: [ self inform: 'Exact Match']
				ifFalse: [ |morph| 
					morph :=  self buildDiffMorphFromOldString: s2 toNewString:  s1 contextClass:  class.
					morph openInWindowLabeled: (('Comparison from {1} to current version' translated) format: {change stamp. }) ]]					
		ifFalse: [self flash]
		
	