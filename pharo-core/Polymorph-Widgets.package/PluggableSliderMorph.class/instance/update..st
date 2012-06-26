as yet unclassified
update: aSymbol
	"Update the value."
	
	super update: aSymbol.
	aSymbol == self getEnabledSelector ifTrue: [
		^self updateEnabled].
	aSymbol = self getValueSelector ifTrue: [
		^self updateValue]