accessing
classesAndSelectorsDo: aBlock
	packages do: [ :package |
		package methods do: [ :method |
			(environment includesSelector: method methodSymbol in: method actualClass)
				ifTrue: [ aBlock value: method actualClass value: method methodSymbol ] ] ]