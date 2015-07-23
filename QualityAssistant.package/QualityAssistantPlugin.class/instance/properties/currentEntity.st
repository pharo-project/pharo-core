currentEntity

	^ self model selectedClass ifNotNilDo: [ :class |
		self model selectedMethod ifNil: [
			self model selectedCategory
				ifNil: [ class ]
				ifNotNil: [ nil ] ] ] 