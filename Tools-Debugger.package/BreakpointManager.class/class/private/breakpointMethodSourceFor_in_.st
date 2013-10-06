breakpointMethodSourceFor: aSymbol in: aClass 
	"Compose new source containing a break statement (currently it will be the first,
	later we want to insert it in any place)"

	| oldSource methodNode breakOnlyMethodNode sendBreakMessageNode ast |
	OpalCompiler isActive ifFalse: [  
	
	oldSource := aClass sourceCodeAt: aSymbol.
	methodNode := aClass compiler
		source: oldSource;
		class: aClass; 
		failBlock: [self error: '[breakpoint] unable to install breakpoint'];
		translate.
	breakOnlyMethodNode := aClass compiler
		source: 'temporaryMethodSelectorForBreakpoint
					self break.
					^self';
		class: aClass; 
		failBlock: [self error: '[breakpoint] unable to install breakpoint'];
		translate.
	sendBreakMessageNode := breakOnlyMethodNode block statements first.
	methodNode block statements addFirst: sendBreakMessageNode.
	^methodNode printString
	].

      sendBreakMessageNode := RBMessageNode receiver: (RBVariableNode named: 'self')  selector: #break. 
	ast := (aClass>>aSymbol) ast copy.
	ast body addNodeFirst: sendBreakMessageNode.
	^ast formattedCode.