sharedPoolNamed: poolName

	^sharedPools detect:[ :v| v name = poolName asSymbol ] ifNone:[ nil ]