critics
	<eProperty>
	| rules critics manifest builder |
	
	builder  := TheManifestBuilder new.
	manifest := self compilationContext
		ifNil: [ nil ]
		ifNotNil: [ :context |
	 		context getClass
				ifNil: [ nil ]
				ifNotNil: [ :class |
					class
						compiledMethodAt: self selector
						ifPresent: [ :method | builder manifestOf: method ]
						ifAbsent: [ nil ] ] ].
		
	rules    := ReRuleManager uniqueInstance astRules.
	critics  := Set new.

	rules
		reject: [ :rule |
			manifest isNotNil and:
			[ (builder bansRule: rule for: self method) or:
			[  builder bansRule: rule for: self methodClass ] ] ] 
		thenDo: [ :rule |
			rule resetResult.
			rule check: self forCriticsDo: [ :critic | critics add: critic ].
			Processor yield ].
	
	ReSystemAnnouncer uniqueInstance notifyEntity: self criticizedWith: critics. 
	
	^ critics