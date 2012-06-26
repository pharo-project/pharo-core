internet
withInternetLineEndings
	"change line endings from CR's and LF's to CRLF's.  This is probably in prepration for sending a string over the Internet"
	
	^self class
		new: self size * 16 // 15 "provisions for CR-LF pairs"
		streamContents: [ :stream |
			self lineIndicesDo: [:start :endWithoutDelimiters :end |
				stream next: 1 + endWithoutDelimiters - start putAll: self startingAt: start.
				endWithoutDelimiters = end ifFalse: [
					stream crlf ] ] ]