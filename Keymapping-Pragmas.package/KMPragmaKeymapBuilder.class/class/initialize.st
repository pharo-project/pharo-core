instance creation
initialize
	"KMPragmaKeymapBuilder initialize"
	SystemAnnouncer unsubscribe: self.
	SystemAnnouncer current on: MethodAdded, MethodModified, MethodRemoved send: #event: to: self.
	
	self uniqueInstance reset.