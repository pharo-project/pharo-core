testing
testEncodingName
	"self debug: #testEncodingName"
	| locale |
	locale := Locale isoLanguage: 'ja'.
	self assert: locale languageEnvironment fontEncodingName = #FontJapaneseEnvironment