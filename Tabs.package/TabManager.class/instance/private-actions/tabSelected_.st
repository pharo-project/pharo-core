tabSelected: aTab

	self setTabContentFrom: aTab.
	self triggerEvent: #tabSelected with: aTab