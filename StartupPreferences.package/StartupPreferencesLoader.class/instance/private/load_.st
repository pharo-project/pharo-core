load: aCollection

	UserManager default canRunStartupScript ifFalse: [ ^ self ].
	errors removeAll.
	aCollection do: [:file | file fileIn ].