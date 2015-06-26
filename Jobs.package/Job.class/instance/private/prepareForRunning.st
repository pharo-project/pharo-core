prepareForRunning

	isRunning := true.
	process := Processor activeProcess.
	CurrentJob value ifNotNilDo: [ :job | job addChild: self].
	self announce: JobStart.