initialize-release
reopen
	self critical: [
		self isStdout 
			ifFalse: [
				stream 
					open;
					setToEnd ] ]