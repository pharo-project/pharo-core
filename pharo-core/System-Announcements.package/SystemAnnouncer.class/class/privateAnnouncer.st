accessing
privateAnnouncer
	"Answer a system annoncer. Normally you should not invoke it"

	^ privateAnnouncer ifNil: [ privateAnnouncer := Announcer new ]