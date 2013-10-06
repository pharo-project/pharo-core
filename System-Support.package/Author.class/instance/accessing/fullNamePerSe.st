fullNamePerSe

	"Answer the currently-prevailing author full name, such as it is, empty or not"
	#UserManager asClassIfPresent: [ :userManager | 
		^ userManager default currentUser userNameFor: #author ].
	^ fullName