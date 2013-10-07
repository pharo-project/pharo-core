allSendersOf: selector inPackageNamed: packageName
	^(self categoriesInPackageNamed: packageName) inject: OrderedCollection new into: [:senders :category|
		senders, (self allSendersOf: selector inClassCategory: category)]