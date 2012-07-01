loading and updating
updateFromSystem
	| i |
	
	i := 0.
	tempFileInfos := fileInfos. "tempFileInfos will be used during update"
	tempFamilies := families.   "tempFamilies will be used during update"
	fileInfos := OrderedCollection  new: 100.
	'FreeType' displayProgressFrom: 0 to:  3 during:[:mainBar | | platformDirs vmDirs imageDirs done |
		'Updating cached file info' displayProgressAt: Display center from: 0 to:  fileInfoCache size during:[:bar |
			fileInfoCache valuesDo:[:col |
				col copy do:[:each | | dir |
					dir := each absolutePath asFileReference.
					dir exists ifFalse: [ col remove: each ]].
			bar current: (i :=  i + 1).]].
		mainBar current: 1.
		FT2Library current == nil
			ifFalse:[
				"Add all the embedded file infos"
				embeddedFileInfoCache valuesDo:[:eachSet | 
					eachSet do:[:each | fileInfos addFirst: each]].
				done := Set new. "visited directories are tracked in done, so that they are not processed twice"
				platformDirs := self platformAbsoluteDirectories.
				vmDirs := self platformVMRelativeDirectories.
				imageDirs := self platformImageRelativeDirectories.
				i := 0.
				'Loading font files' displayProgressAt: Display center from: 0 to:  3 during:[:bar |
					imageDirs do:[:each |
						self updateFromDirectory: each locationType: #imageRelative done: done ].
					bar current: (i := i + 1).
					vmDirs do:[:each |
						self updateFromDirectory: each locationType: #vmRelative done: done ].
					bar current: (i := i + 1).
					platformDirs do:[:each |
						self updateFromDirectory: each locationType: #absolute done: done ].
					bar current: (i := i + 1) ]].
		mainBar current: 2.
		i := 0.
		'Calculating available font families' displayProgressAt: Display center from: 0 to:  1  during:[:bar |
			"self removeUnavailableTextStyles."
			"self addTextStylesWithPointSizes: #(8 10 12 15 24)."
			tempFileInfos := nil.
			self buildFamilies.
			tempFamilies := nil.			
			bar current: (i := i + 1)].
		mainBar current: 3].
	LogicalFont allInstances do:[:each | each clearRealFont]. "in case they have a bad one"
			