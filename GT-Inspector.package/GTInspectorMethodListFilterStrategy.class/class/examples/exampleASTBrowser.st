exampleASTBrowser
	"An inspector showing a browser for navigating through AST nodes."
	|inspector|
	
	inspector := GTInspector new.
	inspector presentationFilter: (GTInspectorMethodListFilterStrategy new
		addAndSelectSignatureFor: CompiledMethod>>#gtInspectorASTIn:;
		addAndSelectSignatureFor: RBProgramNode>>#gtInspectorSourceCodeIn:).
	inspector openOn: Morph>>#initialize.