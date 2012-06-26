*Multilingual-UnicodeInitialization
initializeUnicodeData
	"Unicode initializeUnicodeData
	
	UIManager default informUserDuring: [ :bar| | result |
            bar value: 'Downloading Unicode data'.
            (result := ZnEasy get: 'http://www.unicode.org/Public/UNIDATA/UnicodeData.txt') isSuccess
                ifFalse: [ ^ self error: 'Download failed' ].
            bar value: 'Updating Case Mappings'.
            self parseUnicodeDataFrom: result contents readStream ].
	"
	
	self parseUnicodeDataFrom: UnicodeSpec unicodeData readStream.