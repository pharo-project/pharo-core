accessing
supportedKinds
	"All the kinds of items that this event can take."
	
	^ Array with: self classKind with: self methodKind with: self categoryKind with: self protocolKind