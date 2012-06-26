tests
testClassVariable
	"An association included in a global class is treated as global by default."

	self assertSerializationIdentityOf: (self class classPool associationAt: #ClassVariableForTesting)