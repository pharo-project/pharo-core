system start up
setDefaultDirectoryClass
	"Initialize the default directory class to suit this platform. This method is called when the image starts up - it needs to be right at the front of the list of the startup sequence"

	DirectoryClass := self activeDirectoryClass
