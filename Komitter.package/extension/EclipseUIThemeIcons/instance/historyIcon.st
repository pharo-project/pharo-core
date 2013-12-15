historyIcon
	^ icons
			at: #'historyIcon'
			ifAbsentPut:[ Pharo3UIThemeIcons form16x16FromContents: self historyIconContents ].