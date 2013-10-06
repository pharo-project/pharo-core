attachCategory: aCategory targetting: anObject
	| isAlreadyAttached category |
	
	category := aCategory asKmCategoryIn: KMRepository default.
	isAlreadyAttached := self targets anySatisfy: [ :e | 
			self flag: 'Maybe the following line should be reified as KMCategoryTarget>>=... Guille? - SeanDeNigris'.
			e category = category and: [ e target = anObject and: [ e morph = morph ] ] ].
	isAlreadyAttached ifFalse: [ | categoryTarget |
			categoryTarget := KMCategoryTarget target: anObject morph: morph category: category.
			self targets add: categoryTarget ].