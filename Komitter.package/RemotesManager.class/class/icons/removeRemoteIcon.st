removeRemoteIcon

	^ removeRemoteIcon ifNil: [ removeRemoteIcon := Smalltalk ui icons form16x16FromContents: self removeRemoteIconData ]