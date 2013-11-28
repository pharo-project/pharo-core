historyIcon

	^ historyIcon ifNil: [ historyIcon := Pharo3UIThemeIcons form16x16FromContents: self historyIconData ]