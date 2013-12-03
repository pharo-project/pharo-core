manageRemotesIcon

	^ manageRemotesIcon ifNil: [ manageRemotesIcon := Pharo3UIThemeIcons form16x16FromContents: self manageRemotesData ]