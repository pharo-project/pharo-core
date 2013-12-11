testFindBestNodeForClassVarItsRBVariable
	| node |

	node :=SugsMenuBuilder findBestNodeFor:  SugsMockContext classVariableContext .
	self assert: node class equals: RBVariableNode.
	"Es una forma un tanto molesta de preguntar... es una var de clase?" 
	self assert:( node binding isLiteralVariable and: [(Smalltalk globals  includesAssociation: node binding assoc ) not]).