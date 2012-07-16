message list
currentSelector

	^ self messageList indexOf: currentSelector ifAbsent: [ 0 ]