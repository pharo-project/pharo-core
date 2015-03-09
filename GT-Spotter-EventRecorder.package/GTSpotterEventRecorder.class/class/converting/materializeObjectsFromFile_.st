materializeObjectsFromFile: aFileReference 
	"self materializeObjectsFromFile: './gt/events/' asFileReference allFiles any"
	^ self materialize: (aFileReference binaryReadStreamDo: #contents)