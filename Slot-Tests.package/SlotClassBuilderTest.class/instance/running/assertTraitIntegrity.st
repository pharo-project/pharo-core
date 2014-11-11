assertTraitIntegrity
	self assert: TOne users isHealthy.
	self assert: TOne classTrait users isHealthy.
	self assert: TTwo users isHealthy.
	self assert: TTwo classTrait users isHealthy.