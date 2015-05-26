addRemoteIcon

	^ addRemoteIcon ifNil: [ addRemoteIcon := Pharo3UIThemeIcons form16x16FromContents: self addRemoteIconData ]