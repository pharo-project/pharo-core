private protocol
checkResponse
	"Get the response from the server and check for errors."

	self
		checkResponseOnError: [:response | (TelnetProtocolError protocolInstance: self) signal]
		onWarning: [:response | (TelnetProtocolError protocolInstance: self) signal].
