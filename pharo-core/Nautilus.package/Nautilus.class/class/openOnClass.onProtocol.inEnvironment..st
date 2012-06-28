opening
openOnClass: aClass onProtocol: aProtocol inEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance browsedEnvironment: anEnvironment.
	instance showInstance: aClass isMeta not.
	instance selectedCategory: aProtocol.
	instance package: aClass package class: aClass category: nil method: nil.
	instance open.
	instance ui selectedCategory: aProtocol.
	instance ui categoryWidget selectProtocol: aProtocol .
	instance ui categorySelectionChanged.
	instance ui changed: #currentHistory.
	^ instance