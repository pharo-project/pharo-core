system changes
managersForPackage: aPackage do: aBlock
	self registry do: [:mgr | 
		(mgr packageInfo includesSystemCategory: aPackage name) ifTrue: [
			aBlock value: mgr.
		]
	].