privateStyle: aText 
	| ast |

	ast := self parse: aText isMethod: classOrMetaClass isNil not .
	ast doSemanticAnalysis.

	self style: aText ast: ast.
	^ aText