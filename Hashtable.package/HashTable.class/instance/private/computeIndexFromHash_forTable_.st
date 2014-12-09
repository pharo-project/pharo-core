computeIndexFromHash: aHash forTable: aTable
	^ (aHash \\ aTable size) + 1.