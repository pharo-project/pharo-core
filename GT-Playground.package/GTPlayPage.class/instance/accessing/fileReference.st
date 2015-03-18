fileReference

	^ fileReference ifNil: [ fileReference := self cacheDirectory / (self title, '.ph')]