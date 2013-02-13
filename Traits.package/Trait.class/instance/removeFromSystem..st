initialization
removeFromSystem: logged
	self users do: [ :user | user removeFromComposition: self ].
	self environment forgetClass: self logged: logged.
	self obsolete