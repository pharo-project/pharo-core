critics

	| rules critics manifest builder |
	
	builder := TheManifestBuilder new.
	manifest := builder manifestOf: self.
		
	rules := ReEngine uniqueInstance classRules.
	critics := Set new.
	rules
		reject: [ :rule |
			manifest isNotNil and:
			[ builder bansRule: rule for: self ] ]
		thenDo: [ :rule |
			rule resetResult.
			rule check: self forCriticsDo: [ :critic | critics add: critic ].
			Processor yield ].
	
	ReEngine uniqueInstance notifyEntity: self CriticizedWith: critics. .
	
	^ critics