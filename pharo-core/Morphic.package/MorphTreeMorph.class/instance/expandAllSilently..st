expanding-collapsing
expandAllSilently: aMorph
	| subs |
	aMorph isExpanded ifFalse: [aMorph expand].
	aMorph childrenDo: [:ch | self expandAllSilently: ch].
	

