updateList
	super rootItems: (self initialRootItems select: [ :p | (self pattern matchesIn: p name) notEmpty ]).
	super updateList