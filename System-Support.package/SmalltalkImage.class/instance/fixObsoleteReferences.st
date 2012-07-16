housekeeping
fixObsoleteReferences
	"SmalltalkImage current fixObsoleteReferences.
	SystemNavigation new obsoleteBehaviors size > 0
		ifTrue: [ SystemNavigation new obsoleteBehaviors inspect.
			self error:'Still have obsolete behaviors. See inspector']"

	| informee obsoleteBindings obsName realName realClass |
	Smalltalk
		garbageCollect;
		garbageCollect.
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
					binding key: binding key value: realClass ] ].
	Behavior flushObsoleteSubclasses.
	Smalltalk
		garbageCollect;
		garbageCollect