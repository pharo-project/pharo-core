code editing
testCompilationOfUndefinedVar
	"Compilation of undefined used to error before getting to the point of providing options to correct 
	(By handling UndeclaredVariable).
	Checking that UndeclareVariable is actually raised is one way to test this does not happen
	self debug: #testCompilationOfUndefinedVar.
	"
	| sourceString editor paragraph |
	sourceString := 'testMethod 
		iAmUndefined'.
	paragraph := Paragraph new.
 	paragraph 
		compose:  '' asText 
		style: TextStyle default copy 
		from: 1
		in:  ( 0@0 extent: 100@100 ) ;
		positionWhenComposed: 0@0.			
	editor := TextMorph new editor.
	Smalltalk isInteractive ifFalse: [^self].
	self should: [self class compileSilently: sourceString classified: 'generated' notifying: editor ] raise: UndeclaredVariable.