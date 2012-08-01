*FuelMetalevel-resetting
reuseFullGlobalMappers: aFullGlobalMappers withInternalBehaviors: internals internalMethods: methods

	aFullGlobalMappers do: [:each | each resetForInternalBehaviors: internals internalMethods: methods]. 
	internalClasses := internals.
	internalMethods := methods.
	globalMappers := aFullGlobalMappers.
	