as yet unclassified
uniqueInstance
	"Answer a system annoncer."
	
	^ announcer ifNil: [ announcer := self new ]