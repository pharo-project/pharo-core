hasPreviousNavigationFromClass: aClass

	^ self hasPreviousStep and: [
		self previousStep origin isKindOf: aClass ]