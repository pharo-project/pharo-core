instance creation
reset
	self default: self new.
	KMPragmaKeymapBuilder uniqueInstance reset.
	KMDispatcher allInstancesDo: #reset