as yet unclassified
startState
	treeMorph expandAllSuchThat: [:node | node percentage > self startMinPercentageToExpand]
	