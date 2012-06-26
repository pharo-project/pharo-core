writing
writeStreamDo: aValuable
	"Evaluates the argument with a write stream. Answers the result."
	
	(FileLocator imageDirectory / self fileName) writeStreamDo: [:stream | ^ aValuable value: stream ]
