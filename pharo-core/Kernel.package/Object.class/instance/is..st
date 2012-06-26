testing
is: aSymbol
	"A means for cleanly replacing all isXXX like methods.
	Please use judiciously!
	Suggested by Igor Stasenko at
	http://lists.squeakfoundation.org/pipermail/squeak-dev/2009-June/136793.html.
	all isXXX should be converted following the pattern
	
	ColorForm>>isColorForm 
			^ true
	Object>>isColorForm 
			^ false 
	is: aSymbol
		^ aSymbol = #ColorForm or: [ super is: aSymbol ]"

	^false


