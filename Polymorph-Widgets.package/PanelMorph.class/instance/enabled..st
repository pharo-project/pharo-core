protocol
enabled: aBoolean
	"Pass on to submorphs."

	self submorphsDo: [:m |
		(m respondsTo: #enabled:) ifTrue: [
			m enabled: aBoolean]]