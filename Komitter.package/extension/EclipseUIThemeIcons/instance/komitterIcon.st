komitterIcon
	^ icons
			at: #'komitterIcon'
			ifAbsentPut:[ Smalltalk ui icons form16x16FromContents: self komitterIconContents ].