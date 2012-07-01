private creating
createPackage: nameString with: versionString
	^String streamContents: [ :stream | 
		stream 
			<< String tab << String tab 
			<< 'package: ' << $' << nameString << $' << ' with: ' << $' << versionString << $' ]