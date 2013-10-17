getCategories

	^ categories ifNil: [ categories := self loadCategories ].