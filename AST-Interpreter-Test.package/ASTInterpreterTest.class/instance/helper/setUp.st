setUp
	"for now we use an ast cache to speed up the ast lookup"
	ASTCache initialize.
	interpreter := ASTInterpreter new.
	context := AIRootContext new.