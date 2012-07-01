as yet unclassified
versionsAvailableForPackage: aPackage
	^ self root asArray select: [:ea | ea package = aPackage] thenCollect: [:ea | ea info]