genForInstanceVariableSlot
	"node in this case is the binding of the instance variable"
	^RBMessageNode receiver: node asLiteralNode selector: #read: arguments: { RBVariableNode named: 'self' }