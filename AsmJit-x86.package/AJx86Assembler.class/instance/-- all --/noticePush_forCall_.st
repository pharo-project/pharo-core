noticePush: numBytes forCall: aCallInfo

	self addInstruction: (AJCallArgument new size: numBytes; callInfo: aCallInfo ).
