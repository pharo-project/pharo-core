initialization
initialize
	"Initialization code for NautilusMCBindings"

	super initialize.

	bindingsRtoMC := IdentityDictionary new.
	bindingsMCtoR := IdentityDictionary new.
	self registerToMCAnnouncements.