username: username

	^ Smalltalk tools userManager users
		detect: [:e | e username = username ] 
		ifNone: [	
			self new
				username: username;
				yourself ]