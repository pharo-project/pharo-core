fixObsoleteReferences
	"SmalltalkImage current fixObsoleteReferences.
	SystemNavigation new obsoleteBehaviors size > 0
		ifTrue: [ SystemNavigation new obsoleteBehaviors inspect.
			self error:'Still have obsolete behaviors. See inspector']"

	| obsoleteBindings obsName realName realClass |
	Smalltalk garbageCollect.
	CompiledMethod allInstances
		do: [ :method | 
			obsoleteBindings := method literals
				select: [ :literal | literal isVariableBinding 
									and: [ literal value isBehavior  and: [ literal value isObsolete ]]].
			obsoleteBindings
				do: [ :binding | 
					obsName := binding value name.
					self trace: 'Binding: ';
						traceCr: obsName.
					realName := obsName copyReplaceAll: 'AnObsolete' with: ''.
					realClass := Smalltalk globals at: realName asSymbol ifAbsent: [ UndefinedObject ].
					binding key: binding key value: realClass ].
			"do not forget to flush the JIT cache"
			obsoleteBindings ifNotEmpty: [ method flushCache ]].
	Behavior flushObsoleteSubclasses.