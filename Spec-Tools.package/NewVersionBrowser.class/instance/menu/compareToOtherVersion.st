compareToOtherVersion
	| labels versions index |
	versions := self buildChangeList.
	labels := versions collect: [ :version | version stamp ].
	index := UIManager default chooseFrom: labels.
	index > 0
		ifTrue: [ |selected| selected := versions at:index.
			self compareTo: selected withLabel: selected stamp]