accessing
at: row at: column put: value
	^contents at: (self indexForRow: row andColumn: column) put: value