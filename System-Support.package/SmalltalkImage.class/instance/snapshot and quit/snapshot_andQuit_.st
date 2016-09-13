snapshot: save andQuit: quit
	DefaultExecutionEnvironment beActiveDuring: 
		 [^SessionManager default snapshot: save andQuit: quit]