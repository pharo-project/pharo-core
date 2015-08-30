guidedBan: aCritic

	| candidates |
	
	ReEngine uniqueInstance notifyBanInitiatedFor: aCritic of: self.
	
	candidates := { self . self methodClass }.
	
	(UIManager default
		chooseFrom: (candidates collect: #name)
		values: candidates
		title: 'On which level do you want to ban the rule?')
			ifNotNil: [ :entity | entity ban: aCritic ]