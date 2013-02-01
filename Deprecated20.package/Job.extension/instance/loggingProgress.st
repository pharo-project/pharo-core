*Deprecated20
loggingProgress

	| log |
	log := LoggingSystemProgressItemMorph new.
	self announcer
		on: JobStart send: #onStart: to: log;
		on: JobChange send: #onChange: to: log;
		on: JobEnd send: #onEnd: to: log.