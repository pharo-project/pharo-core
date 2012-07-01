accessing
supportedKinds
	"All the kinds of items that this event can take. By default this is all the kinds in the system. But subclasses can override this to limit the choices. For example, the SuperChangedEvent only works with classes, and not with methods, instance variables, ..."

	^self allItemKinds