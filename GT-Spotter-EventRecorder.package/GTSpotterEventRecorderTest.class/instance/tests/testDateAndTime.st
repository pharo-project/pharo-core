testDateAndTime
	self versionsDo: [ :announcement :version |
		announcement materializedData do: [ :eachEvent | | dateAndTime |
			dateAndTime := eachEvent dateAndTime.
			self assert: dateAndTime class equals: DateAndTime ] ]