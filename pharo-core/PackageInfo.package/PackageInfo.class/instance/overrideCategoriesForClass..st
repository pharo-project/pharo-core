testing
overrideCategoriesForClass: aClass
	^Array streamContents: [:stream |
		self overrideCategoriesForClass: aClass
			do: [:each | stream nextPut: each]]
