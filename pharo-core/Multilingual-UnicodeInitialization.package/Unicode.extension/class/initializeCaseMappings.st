*Multilingual-UnicodeInitialization
initializeCaseMappings
	"Unicode initializeCaseMappings
	
	UIManager default informUserDuring: [ :bar| | result |
		bar value: 'Downloading Unicode data'.
		(result := ZnEasy get: 'http://www.unicode.org/Public/UNIDATA/CaseFolding.txt') isSuccess
			ifFalse: [ ^ self error: 'Download failed' ].
		bar value: 'Updating Case Mappings'.
		self parseCaseMappingFrom: result contents readStream ].
	"
	ToCasefold := IdentityDictionary new.
	ToUpper := IdentityDictionary new.
	ToLower := IdentityDictionary new.
	
	self parseCaseMappingFrom: UnicodeSpec caseFoldingData readStream