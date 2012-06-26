private
fontAt: index put: font 
	"Automatically grow the array.  8/20/96 tk"
	index > fontArray size ifTrue: [ fontArray := fontArray , (Array new: index - fontArray size) ].
	fontArray 
		at: index
		put: font