*FuelPackageLoader
removeCategorySilently: aCategory

	(organization listAtCategoryNamed: aCategory) do: [ :aSelector | self removeSelectorSilently: aSelector ].
	organization removeCategorySilently: aCategory.
