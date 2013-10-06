reset
	"Do not reset KMDispatchers instances, it may make the image unusable or force the user to close all the windows."
	
	"TODO: a better reset, allowing the KMDispatcher instances to reload all named, updated, keymaps from the resetted KMRepository."

	self default: self new.
	KMPragmaKeymapBuilder uniqueInstance reset