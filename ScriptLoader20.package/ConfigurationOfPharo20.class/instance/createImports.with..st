private creating
createImports: versionString with: imports
	^imports 
		ifNotEmpty: [
			' imports: #({1})' format: {
				String streamContents: [ :stream | 
					imports 
						do: [ :each | 
							stream << $' << ('{1}-baseline-{2}' format: {versionString. each asLowercase }) << $' ]
						separatedBy: [ stream << String space ] ]} ]
		ifEmpty: [ '' ]