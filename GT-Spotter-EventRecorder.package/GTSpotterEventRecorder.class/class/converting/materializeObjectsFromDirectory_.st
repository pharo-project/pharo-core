materializeObjectsFromDirectory: aFileReference
	"self materializeObjectsFromDirectory: './gt/events/' asFileReference"
	^ aFileReference allFiles collect: [ :eachFile |
		self materializeObjectsFromFile: eachFile ]  