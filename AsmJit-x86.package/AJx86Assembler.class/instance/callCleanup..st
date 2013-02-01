function calls
callCleanup: anAJCdeclCallInfo 

	^ self addInstruction:   (AJCallCleanup new callInfo: anAJCdeclCallInfo )