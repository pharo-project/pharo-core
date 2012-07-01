drag and drop
changeCategoryForClass: class srcSystemCategory: srcSystemCategorySel atListMorph: dstListMorph internal: internal copy: copyFlag 
	"only move semantic"
	| newClassCategory success |
	self flag: #stringSymbolProblem.
	success := copyFlag not ifFalse: [^ false].
	newClassCategory := self dstCategoryDstListMorph: dstListMorph.
	(success := newClassCategory notNil & (newClassCategory ~= class category))
		ifTrue: 
			[class category: newClassCategory.
			self changed: #classList.
			internal ifFalse: [self selectClass: class]].
	^ success