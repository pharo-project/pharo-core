private
loadMethods

	^ self model showGroups
		ifTrue: [ self model selectedCategories
					ifEmpty: [ self model methodsForCategoryInGroup: self model allLabel ]
					ifNotEmpty: [:cat | self model methodsForCategoriesInGroup: cat ]]
		ifFalse: [
			self model selectedCategories
				ifEmpty: [ self model methodsForCategory: self model allLabel ]
				ifNotEmpty: [:cat | self model methodsForCategories: cat ]]