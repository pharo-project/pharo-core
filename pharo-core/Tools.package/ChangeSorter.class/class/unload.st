initialization
unload
	"Unload the receiver from global registries"

	self environment at: #FileList ifPresent: [:cl |
	cl unregisterFileReader: self].
