trace: aBlock onFileNamed: fileName
	"This method uses the simulator to print calls to a file."

	| aStream |
	^ [aStream := FileStream fileNamed: fileName.
		self trace: aBlock on: aStream] ensure: [aStream close]