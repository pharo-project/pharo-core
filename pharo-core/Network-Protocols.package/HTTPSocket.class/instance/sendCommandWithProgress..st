accessing
sendCommandWithProgress: commandString
	"Send the given command as a single line followed by a <CR><LF> terminator."

	self sendDataWithProgress: commandString, String crlf.
