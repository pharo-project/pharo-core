adding elements
addPoolNamed: poolName
	"creates a RGPoolDefinition with the given name.
	It's verified that a pool with that name does not exist"
	| pool |

	(self includesPoolNamed: poolName) ifTrue: [ ^self ].
	pool:= self factory createSharedPoolNamed: poolName.
	self addPool: pool.