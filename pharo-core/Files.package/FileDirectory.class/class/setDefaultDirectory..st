system start up
setDefaultDirectory: directoryName
	"Initialize the default directory to the directory supplied. This method is called when the image starts up."
	| dirName |
	DirectoryClass := self activeDirectoryClass.
	dirName := (FilePath pathName: directoryName) asSqueakPathName.
	[dirName endsWith: self slash] whileTrue:[
		dirName := dirName copyFrom: 1 to: dirName size - self slash size.
	].
	DefaultDirectory := self on: dirName.