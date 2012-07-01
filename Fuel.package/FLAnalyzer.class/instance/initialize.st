initialize-release
initialize

	super initialize.
	self setDefaultAnalysis.
	self useLightMappers.
	pluggableSubstitutions := OrderedCollection new.
	internalClasses := IdentitySet new.
	internalMethods := IdentitySet new. 
	globalSymbols := self class defaultGlobalSymbols asIdentitySet.
