private generating
generateDoIt: nameString version: versionString with: aString 
	| template |
	
	template := 'version{2}{1}
{3}' format: {
		nameString.
		self versionForMethodName: versionString. 
		String streamContents: [ :stream |
			aString lines
			 	do: [ :each | stream << String tab << each trimBoth ]
				separatedBy: [ stream cr ] ]}.
	
	self class 
		compile: template 
		classified: 'versions'