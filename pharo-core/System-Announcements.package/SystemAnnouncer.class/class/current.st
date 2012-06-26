accessing
current
	"Answer a system annoncer."
	
	^ announcer ifNil: [ announcer := self new ]