initialization
initialize
	"Initialization code for ProtocolOrganizer"

	super initialize.

	protocols := IdentitySet new.
	allProtocol := AllProtocol protocolOrganizer: self.