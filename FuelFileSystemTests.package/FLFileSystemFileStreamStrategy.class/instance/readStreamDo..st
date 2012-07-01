reading
readStreamDo: aValuable
	"Evaluates the argument with a read stream. Answers the result."
	
	(FileLocator imageDirectory / self fileName) readStreamDo: [:stream | ^ aValuable value: stream ]