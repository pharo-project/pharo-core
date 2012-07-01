initialization
removeFromSystem: logged
	self environment forgetClass: self logged: logged.
	self obsolete