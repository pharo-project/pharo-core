diveInCategoryDueTo: anEventType

	self spotterModelDo: [
		self spotterModel isEmpty
			ifFalse: [ self spotterModel currentStep isEmpty 
				ifFalse: [ self spotterModel currentStep diveInCategoryDueTo: anEventType ] ] ]