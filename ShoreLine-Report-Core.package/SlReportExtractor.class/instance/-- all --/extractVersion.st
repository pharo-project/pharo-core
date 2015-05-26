extractVersion

	^ {
		#name -> SystemVersion current version.
		#date -> SystemVersion current date.
		#update -> SystemVersion current highestUpdate
	} asDictionary