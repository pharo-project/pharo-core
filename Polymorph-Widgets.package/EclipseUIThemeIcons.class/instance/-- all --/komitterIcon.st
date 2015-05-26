komitterIcon
	^ icons
			at: #'komitterIcon'
			ifAbsentPut:[ Pharo3UIThemeIcons form16x16FromContents: self komitterIconContents ].