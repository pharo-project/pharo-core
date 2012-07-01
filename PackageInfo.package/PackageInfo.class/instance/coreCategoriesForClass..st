testing
coreCategoriesForClass: aClass
	^ aClass organization categories select: [:cat | (self isForeignClassExtension: cat) not]