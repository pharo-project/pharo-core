accessing instances and variables
allowsSubInstVars
	"Classes that allow instances to change classes among its subclasses will want to override this and return false, so inst vars are not accidentally added to its subclasses."

	^ true