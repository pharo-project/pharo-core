testing
isWin32CE

	^ (self isWin32 and: [self osVersion = 'CE'])