timestamp
	^ timestamp ifNotNil: [ :aTimestamp |
			(DateAndTime fromUnixTime: aTimestamp)
				translateTo: (
					self announcementTimestamp 
						ifNotNil: [ :t | t offset]
						ifNil: [ 0 ]) ] 