resetting
resetForInternalBehaviors: explicitInternals internalMethods: methods

	self reinitializeGlobalClustersForInternalBehaviors.
	self removeNewInternalBehaviorsFromCache: explicitInternals.
	self addOldInternalBehaviorsToCache.

	"Now that old internal behaviors have been updated, we can set the new ones"
	internalBehaviors := explicitInternals.
	
	"The methods are not cached anywhere, so we can just set the new ones"
	internalMethods := methods.
		
	"For the moment we set the default symbols. In the future we can pass them by parameter also "
	globalSymbols := FLAnalyzer defaultGlobalSymbols.
