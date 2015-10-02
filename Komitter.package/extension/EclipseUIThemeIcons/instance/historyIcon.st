historyIcon
	^ icons
			at: #'historyIcon'
			ifAbsentPut:[ Smalltalk ui icons form16x16FromContents: self historyIconContents ].