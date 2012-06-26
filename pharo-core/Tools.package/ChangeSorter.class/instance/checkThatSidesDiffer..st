changeset menu
checkThatSidesDiffer: escapeBlock
	"If the change sets on both sides of the dual sorter are the same, put up an error message and escape via escapeBlock, else proceed happily"

	(myChangeSet == (parent other: self) changeSet)
		ifTrue:
			[self inform: 
'This command requires that the
change sets selected on the two
sides of the change sorter *not*
be the same.'.
			^ escapeBlock value]
