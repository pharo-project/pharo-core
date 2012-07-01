enumerating
valuesDo: aBlock 
	"Evaluate aBlock for each of the receiver's values."

	self associationsDo: [:association | aBlock value: association value]