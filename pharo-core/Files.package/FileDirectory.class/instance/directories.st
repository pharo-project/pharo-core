enumeration
directories
	"Return a collection of subdirectories inside this directory."
	"FileDirectory default directories"

	^ self entries 
		select: [:entry | entry isDirectory ]
		thenCollect: [ :entry| entry asFileDirectory ]
