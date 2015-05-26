removeRemoteIcon

	^ removeRemoteIcon ifNil: [ removeRemoteIcon := Pharo3UIThemeIcons form16x16FromContents: self removeRemoteIconData ]