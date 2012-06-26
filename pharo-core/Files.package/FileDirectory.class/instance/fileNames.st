enumeration
fileNames
	"Return a collection of names for the files (but not directories) in this directory."
	"FileDirectory default fileNames"
	^ (self entries reject: [ : entry | entry isDirectory ]) 
		collect: [ : entry | entry name ]