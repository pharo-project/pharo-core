load: aCollection

	Smalltalk tools userManager canRunStartupScript ifFalse: [ ^ self ].
	errors removeAll.
	aCollection do: [:file | file fileIn ].