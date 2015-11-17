filter
	^ dataSource class
		root:
			(FTRootItem new
				children: (dataSource rootsItems select: [ :each | (pattern matchesIn: each asString) notEmpty ]);
				yourself)
		children: dataSource childrenBlock