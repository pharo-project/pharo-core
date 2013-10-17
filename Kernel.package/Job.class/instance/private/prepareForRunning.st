prepareForRunning

	isRunning := true.
	JobStartNotification on: self.
	process := Processor activeProcess.
	self announce: JobStart.