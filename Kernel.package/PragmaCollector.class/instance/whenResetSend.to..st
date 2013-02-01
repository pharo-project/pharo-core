subscription
whenResetSend: aSelector to: anObject
	"record a change listener"
	self subscribe: PragmaCollectorReset send: aSelector to: anObject
