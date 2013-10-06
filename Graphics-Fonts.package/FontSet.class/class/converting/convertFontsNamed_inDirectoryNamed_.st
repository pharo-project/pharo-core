convertFontsNamed: familyName inDirectoryNamed: dirName 
	"FontSet convertFontsNamed: 'Tekton' inDirectoryNamed: 'Tekton Fonts' "
	"This utility is for use after you have used BitFont to produce data files 
	for the fonts you wish to use.  It will read the BitFont files and build
	a fontset class from them.  If one already exists, the sizes that can be
	found will be overwritten."
	"For this utility to work as is, the BitFont data files must be named 'familyNN.BF',
	and must reside in the directory named by dirName (use '' for the current directory)."
	"Check first for matching file names and usable FontSet class name."
	| allFontNames fontSet dir |
	
	dir := FileSystem disk workingDirectory.
	dirName isEmpty 
		ifFalse: [ dir := dir / dirName ].
		
	allFontNames := dir files select: [ :file|  familyName , '..\.BF' matches: file basename].
	allFontNames isEmpty 
		ifTrue: [ ^ self error: 'No files found like ' , familyName , 'NN.BF' ].
	
	fontSet := self fontSetClass: familyName.
	
	allFontNames do: [ :each | 
		Transcript cr; show: each.
		fontSet compileFont: (StrikeFont new readFromBitFont: (dir / each) fullName) ]