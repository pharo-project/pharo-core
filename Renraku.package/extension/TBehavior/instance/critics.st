critics

	| rules critics manifest builder |
	
	builder := TheManifestBuilder new.
	manifest := builder manifestOf: self.
		
	rules := ReEngine uniqueInstance rules.
	critics := Set new.
	rules
		reject: [ :rule |
			manifest isNotNil and:
			[ builder skipsRule: rule for: self ] ]
		thenDo: [ :rule |
			rule resetResult.
			rule checkClass: self.
			rule critics ifNotEmpty: [
				critics add: (ReCritic
					for: self
					by: rule
					at: (rule result selectionIntervalFor: self definition)) ].
			Processor yield ].
	
	^ critics