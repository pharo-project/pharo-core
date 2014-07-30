createSharedPoolNamed: aSymbol
	"A shared pool is a class inheriting from #SharedPool"

	^(self createInstanceOfClass: RGClassDefinition named: aSymbol)
			superclassName: #SharedPool;
			isPool: true;
			yourself