private
highlightCategory: aMethod.
		methodWidget resetMethodCache.
		aMethod 
			ifNil: [ categoryWidget searchedElement: categoryWidget selectedCategoryIndex ]
			ifNotNil: [ | category index |
				category := aMethod protocol.
				index := self getCategories indexOf: ( category ).
				categoryWidget searchedElement: index ]