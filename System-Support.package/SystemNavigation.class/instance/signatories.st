author
signatories
	"Answer the initials corresponding to the people who have signed the license"
	"SystemNavigation default signatories"
	
	^(self signatoriesString subStrings: {Character cr})
		collect: [ :each | each substrings first]