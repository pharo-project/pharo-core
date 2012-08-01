*FuelMetalevel
reusableFullGlobalMappers

	globalMappers isNil ifTrue: [ globalMappers := Array with: (FLFullGlobalMapper newWithInternalBehaviors: internalClasses internalMethods: internalMethods globalSymbols: globalSymbols) ].
	^ globalMappers 