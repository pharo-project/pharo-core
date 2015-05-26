announcer
	^ announcer ifNil: [ announcer := Announcer new weak ]