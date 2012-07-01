accessing
methodInfoFromRemoval: classAndSelector

	^ (self changeRecorderFor: classAndSelector first)
		infoFromRemoval: classAndSelector last