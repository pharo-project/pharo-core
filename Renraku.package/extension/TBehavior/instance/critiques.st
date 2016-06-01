critiques
	<eProperty>
	| rules critiques manifest builder |
	
	builder := TheManifestBuilder new.
	manifest := builder manifestOf: self.
		
	rules := ReRuleManager uniqueInstance classRules.
	critiques := Set new.
	rules
		reject: [ :rule |
			manifest isNotNil and:
			[ builder bansRule: rule for: self ] ]
		thenDo: [ :rule |
			rule resetResult.
			rule check: self forCritiquesDo: [ :critic | critiques add: critic ].
			Processor yield ].
	
	ReSystemAnnouncer uniqueInstance notifyEntity: self criticizedWith: critiques.
	
	^ critiques