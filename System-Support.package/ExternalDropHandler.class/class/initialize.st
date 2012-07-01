initialization
initialize
	"ExternalDropHandler initialize"

	self resetRegisteredHandlers.
	self
		registerHandler: self defaultImageHandler;
		registerHandler: self defaultGZipHandler.
	