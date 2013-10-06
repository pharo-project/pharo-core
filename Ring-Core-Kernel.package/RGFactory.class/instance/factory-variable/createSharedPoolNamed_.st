createSharedPoolNamed: aSymbol
	"A shared pool is a class inheriting from #SharedPool"

	^(self createInstanceOfClass: self classClass named: aSymbol)
			superclassName: #SharedPool;
			isPool: true;
			yourself