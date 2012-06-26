instance creation
initDefaultFontsAndStyle
	"This provides the system with 10 and 12-pt basal fonts.
	Bold and italic versions will be automatically generated as needed"
	| fontArray |
	fontArray := Array new: 2.
	fontArray 
		at: 1
		put: (StrikeFont new readFromStrike2: 'NewYork10.sf2').
	fontArray 
		at: 2
		put: (StrikeFont new readFromStrike2: 'NewYork12.sf2').
	TextSharedInformation 
		at: #DefaultTextStyle
		put: (TextStyle fontArray: fontArray)

	"TextStyle initDefaultFontsAndStyle."