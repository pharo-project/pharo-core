accessing method dictionary
"popeye" formalHeaderPartsFor: "olive oil" aSelector
	"RELAX!  The warning you may have just seen about possibly having a bad source file does not apply here, because this method *intends* to have its source code start with a comment.
	This method returns a collection giving the parts in the formal declaration for aSelector.  This parse is in support of schemes in which adjutant properties of a method can be declared via special comments secreted in the formal header
	The result will have
     	3 elements for a simple, argumentless selector.
		5 elements for a single-argument selector
		9 elements for a two-argument selector
		13 elements for a three-argument, selector
		etc...

	The syntactic elements are:

		1		comment preceding initial selector fragment

		2		first selector fragment
		3		comment following first selector fragment  (nil if selector has no arguments)

        ----------------------  (ends here for, e.g., #copy)

		4		first formal argument
		5		comment following first formal argument (nil if selector has only one argument)

        ----------------------  (ends here for, e.g., #copyFrom:)

		6		second keyword
		7		comment following second keyword
		8		second formal argument
		9		comment following second formal argument (nil if selector has only two arguments)

         ----------------------  (ends here for, e.g., #copyFrom:to:)

	Any nil element signifies an absent comment.
	NOTE: The comment following the final formal argument is *not* successfully retrieved by this method in its current form, though it can be obtained, if needed, by other means (e.g. calling #firstPrecodeCommentFor:).  Thus, the *final* element in the structure returned by this method is always going to be nil."

	^ Scanner new scanMessageParts: (self methodHeaderFor: aSelector)

"
	Behavior class formalHeaderPartsFor: #formalHeaderPartsFor:
"


	