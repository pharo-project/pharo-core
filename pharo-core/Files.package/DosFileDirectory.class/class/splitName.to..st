platform specific
splitName: fullName to: pathAndNameBlock
	"Take the file name and convert it to the path name of a directory and a local file name within that directory. 
	IMPORTANT NOTE: For 'drives', e.g., roots of the file system on Windows we treat the full name of that 'drive' as the local name rather than the path. This is because conceptually, all of these 'drives' hang off the virtual root of the entire Pharo file system, specified by FileDirectory root. In order to be consistent with, e.g., 

		DosFileDirectory localNameFor: 'C:\Windows' -> 'Windows'
		DosFileDirectory dirPathFor: 'C:\Windows' -> 'C:'

	we expect the following to be true:

		DosFileDirectory localNameFor: 'C:' -> 'C:'
		DosFileDirectory dirPathFor: 'C:'. -> ''
		DosFileDirectory localNameFor: '\\server' -> '\\server'.
		DosFileDirectory dirPathFor: '\\server' -> ''.

	so that in turn the following relations hold:

		| fd |
		fd := DosFileDirectory on: 'C:\Windows'.
		fd containingDirectory includes: fd localName.
		fd := DosFileDirectory on: 'C:'.
		fd containingDirectory includes: fd localName.
		fd := DosFileDirectory on: '\\server'.
		fd containingDirectory includes: fd localName.
	"
	(self isDrive: fullName)
		ifTrue: [^ pathAndNameBlock value:''  value: fullName].
	^ super splitName: fullName to: pathAndNameBlock