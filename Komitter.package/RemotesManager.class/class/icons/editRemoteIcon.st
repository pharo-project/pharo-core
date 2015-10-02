editRemoteIcon

	^ editRemoteIcon ifNil: [ editRemoteIcon := Smalltalk ui icons form16x16FromContents: self editRemoteIconData ]