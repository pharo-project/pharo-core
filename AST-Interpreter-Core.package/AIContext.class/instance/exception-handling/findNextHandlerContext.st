findNextHandlerContext
	"Return the next handler marked context, returning nil if there is none.  
	Search starts with self and proceeds up to nil."
	
	^ self findContextSuchThat: [ :ctxt| ctxt hasExceptionHandler ]