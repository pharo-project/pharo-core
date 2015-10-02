addRemoteIcon

	^ addRemoteIcon ifNil: [ addRemoteIcon := Smalltalk ui icons form16x16FromContents: self addRemoteIconData ]