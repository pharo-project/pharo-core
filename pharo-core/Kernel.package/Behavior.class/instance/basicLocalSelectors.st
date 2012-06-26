accessing method dictionary
basicLocalSelectors
	"Direct accessor for the instance variable localSelectors.
	Because of hardcoded ivar indexes of Behavior and Class in the VM, Class and
	Metaclass declare the needed ivar and override this method as an accessor. 
	By returning nil instead of declaring this method as a subclass responsibility,
	Behavior can be instantiated for creating anonymous classes."
	
	^nil