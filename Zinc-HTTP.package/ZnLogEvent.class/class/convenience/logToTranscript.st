logToTranscript
	self stopLoggingToTranscript.
	^ self announcer when: self send: #crShow: to: Transcript