message sends
allSendersOf: selector inPackageNamed: packageName
	^(self categoriesInPackageNamed: packageName) inject: SortedCollection new into: [:sortedSenders :category|
		sortedSenders, (self allSendersOf: selector inClassCategory: category)]