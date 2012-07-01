organization updating
updateOrganizationSelector: aSymbol oldCategory: oldCategoryOrNil newCategory: newCategoryOrNil
	| changedCategories composition |
	changedCategories := IdentitySet new.
	composition := self hasTraitComposition
		ifTrue: [self traitComposition]
		ifFalse: [TraitComposition new].
	(composition methodDescriptionsForSelector: aSymbol) do: [:each | | effectiveCategory sel currentCategory |
		sel := each selector.
		(self includesLocalSelector: sel) ifFalse: [
			currentCategory := self organization categoryOfElement: sel.
			effectiveCategory := each effectiveMethodCategoryCurrent: currentCategory new: newCategoryOrNil.
			effectiveCategory isNil ifTrue: [
				currentCategory ifNotNil: [changedCategories add: currentCategory].
				self organization removeElement: sel.
			] ifFalse: [
				((currentCategory isNil or: [currentCategory == ClassOrganizer ambiguous or: [currentCategory == oldCategoryOrNil]]) and: [currentCategory ~~ effectiveCategory]) ifTrue: [
					currentCategory ifNotNil: [changedCategories add: currentCategory].
					self organization 
						classify: sel 
						under: effectiveCategory
						suppressIfDefault: false]]]].
	^ changedCategories