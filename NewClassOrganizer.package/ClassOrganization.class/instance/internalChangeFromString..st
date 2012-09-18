backward compatibility - file in/out
internalChangeFromString: categorySpecs 
	"Parse the argument, aString, and make this be the receiver's structure."

	protocolOrganizer := ProtocolOrganizer fromSpec: categorySpecs