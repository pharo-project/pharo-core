dispatching
staticTargets
	self flag: #deprecated. "static targets should not be used any more"

	^(KMRepository default categoriesForClass: target realTarget class) 
		collect: [ :cat | KMCategoryTarget 
						target: target realTarget 
						morph: target morph 
						category: cat ].