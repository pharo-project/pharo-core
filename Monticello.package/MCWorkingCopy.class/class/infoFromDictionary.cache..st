private
infoFromDictionary: aDictionary cache: cache
	| id |
	id := aDictionary at: #id.
	^ cache at: id ifAbsentPut:
		[MCVersionInfo
			name: (aDictionary at: #name)
			id: (aDictionary at: #id)
			message: (aDictionary at: #message)
			date: (aDictionary at: #date)
			time: (aDictionary at: #time)
			author: (aDictionary at: #author)
			ancestors: (self ancestorsFromArray: (aDictionary at: #ancestors) cache: cache)]