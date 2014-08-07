mustBeBooleanInMagic: context
	"Permits to redefine methods inlined by compiler.
	Take the ast node corresponding to the mustBeBoolean error, compile it on the with Opal fly and executes it as a DoIt. Then resume the execution of the context."

	| sendNode methodNode method |
	"go back before the jump"
	context skipBackBeforeJump.
	"get the node that triggered mustBeBoolean"
	sendNode := context sourceNode sourceNodeForPC: context pc.
	"Build method node"
	methodNode := RBMethodNode 
		selector: #ExecuteUnOptimizedIn: 
		arguments: { RBVariableNode named:'ThisContext' } 
		body: sendNode copy asSequenceNode.
	"Rewrite temps for context"
	methodNode rewriteTempsForContext: context.
	"Rewrite non-local returns to return to the correct context"
	RBParseTreeRewriter new 
		replace: '^ ``@value' with: 'ThisContext home return: ``@value';
		executeTree: methodNode.
	"Add a return to the method body"
	methodNode body transformLastToReturn.	
	"Keep same compilation context than the sender node's"
	methodNode compilationContext: sendNode methodNode compilationContext copy.
	"Disable inlining of 'if' message sends"
	methodNode compilationContext compilerOptions: #(- optionInlineIf).
	"Generate the method"	
	method := methodNode generate.
	"jump to the instruction after jump"
	context pc: sendNode irInstruction nextBytecodeOffsetAfterJump.
	"Execute the generated method"
	^ self withArgs: {context} executeMethod: method