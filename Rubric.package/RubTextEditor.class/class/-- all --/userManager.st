userManager
	^ (Smalltalk at: #UserManager ifAbsent: [ Smalltalk at: #UsersManager ]) default