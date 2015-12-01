extract
	semaphore := Semaphore new.
	(Smalltalk hasClassNamed: #ExternalUnixOSProcess) ifFalse: [ ^ self ].
	process := #ExternalUnixOSProcess asClass forkAndExec: '/usr/bin/tar' 
			arguments: (Array with: 'xzf' with: self defaultDownloadFilename fullName)
			environment: nil 
			descriptors: nil 
			workingDir: self defaultDownloadDirectory fullName.
	process addDependent: self.
	self checkProcess.
	semaphore wait.
	process := nil.
	semaphore := nil.