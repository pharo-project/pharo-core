editRemoteIcon

	^ editRemoteIcon ifNil: [ editRemoteIcon := Pharo3UIThemeIcons form16x16FromContents: self editRemoteIconData ]