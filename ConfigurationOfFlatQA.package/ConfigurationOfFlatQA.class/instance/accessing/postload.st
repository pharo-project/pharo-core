postload
	self class environment
		at: #ReRuleManager
		ifPresent: [ :managerClass | managerClass reset ]