guessTypeFromName: url
	"guesses a content type from the url"
	^ MIMEType forFileNameReturnSingleMimeTypeOrNil: url asString