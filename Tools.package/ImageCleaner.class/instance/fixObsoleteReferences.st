cleaning
fixObsoleteReferences
	"self new fixObsoleteReferences"
	CompiledMethod allInstances
		do: [ :method | 
			| obsoleteBindings |
			obsoleteBindings := method literals
				select: [ :literal | literal isVariableBinding 
									and: [ literal value isBehavior and: [ literal value isObsolete ]] ].
			obsoleteBindings
				do: [ :binding | 
					| realClass obsName realName |
					obsName := binding value name.
					Transcript
						show: obsName;
						cr.
					realName := obsName copyReplaceAll: 'AnObsolete' with: ''.
					realClass := Smalltalk globals at: realName asSymbol ifAbsent: [ UndefinedObject ].
					binding key: binding key value: realClass ] ].
	Behavior flushObsoleteSubclasses.
	Smalltalk garbageCollect.
	SystemNavigation new obsoleteBehaviors 
		ifNotEmpty: [ SystemNavigation new obsoleteBehaviors inspect ]