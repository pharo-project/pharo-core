padded: leftOrRight to: length with: char
	self deprecated: 'Use #pad' , leftOrRight capitalized , 'To:with: instead'.

	leftOrRight = #left ifTrue:
		[^ (String new: (length - self size max: 0) withAll: char) , self].
	leftOrRight = #right ifTrue:
		[^ self , (String new: (length - self size max: 0) withAll: char)].