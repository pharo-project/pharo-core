morphic ui
accept
	| version message |
	version := (self findTextMorph: #versionName) text asString.
	message := (self findTextMorph: #logMessage) text asString.
	self addAsLastLogMessage: message.
	self answer: {version. message}