mapping
shouldConsdierMethodAsGlobal: aCompiledMethod
	"Answers true when aCompiledMethod must be considered global, and false otherwise.
	Global methods are those which are NOT included in the classes considered as internal, nor in the methods consider as internal, nor if they are DoIts."
	^ ((((internalBehaviors includes: aCompiledMethod methodClass) not
		and: [(internalBehaviors includes: aCompiledMethod methodClass theNonMetaClass) not]) 
			and: [(internalMethods includes: aCompiledMethod) not])
				and: [aCompiledMethod isInstalled ])
					and: [aCompiledMethod isDoIt not]