dictionary
	| dictionary |
	dictionary := Dictionary new: self class instSize.
	1 to: self class instSize do: [ :index |
		dictionary 
			at: (self class instVarNameForIndex: index)
			put: (self instVarAt: index)
	].
	^ dictionary