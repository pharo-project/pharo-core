system changes
managersForClass: aClass do: aBlock

	self registry do: [:mgr |
		(mgr packageInfo includesClass: aClass)
			ifTrue: [aBlock value: mgr]]