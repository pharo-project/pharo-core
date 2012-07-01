private
rename: sourcePath ifAbsent: absentBlock to: destinationPath ifPresent: presentBlock fileSystem: anFSFilesystem

	| result |
	result := self rename: sourcePath to: destinationPath.
	result	ifNil: [
		(self exists: destinationPath) 
			ifTrue: [ ^ presentBlock value ].
		(self exists: sourcePath) 
			ifFalse: [ ^ absentBlock value ].
		self primitiveFailed ].
	^ self.