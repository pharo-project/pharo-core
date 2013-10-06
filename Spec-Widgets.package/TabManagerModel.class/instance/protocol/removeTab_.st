removeTab: aTab

	"BEWARE: this code is an exception. One should never access directly a value holder contents"
	"I do this here for optimisation. No need to trigger the whole collection changed. Only the added element is interesting "
	tabs contents remove: aTab ifAbsent: [ ].
	
	self widget ifNotNil: [ :w | w removeTab: aTab ]