compareToOtherVersion
	| labels versions index |
	versions := self buildChangeList.
	labels := versions collect:[:version | version stamp ].
	index := UIManager default chooseFrom: labels.
	index ifNil:[^ self].
	self compareTo: (versions at: index) compiledMethod