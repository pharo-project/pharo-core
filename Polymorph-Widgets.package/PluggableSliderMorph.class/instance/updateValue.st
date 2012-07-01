as yet unclassified
updateValue
	"Update the value."
	
	self model ifNotNil: [
		self getValueSelector ifNotNil: [
			self scaledValue: (self model perform: self getValueSelector)]]