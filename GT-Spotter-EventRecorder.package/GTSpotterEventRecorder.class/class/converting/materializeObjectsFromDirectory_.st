materializeObjectsFromDirectory: aFileReference
	"self materializeObjectsFromDirectory: './gt/events/' asFileReference"
	^ aFileReference asFileReference allFiles collect: [ :eachFile |
		self materializeObjectsFromFile: eachFile ]  