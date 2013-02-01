options
defaultOptions
	"see #allOptions on my instance side"
	^ #(
	
	"#optCoerceNilToNull"
	"passing nil as a pointer-type argument, converts it to C NULL "
		
	#optAllowExternalAddressPtr
	"for a pointer-type argument, accept an instance of NBExternalAddress "
	
	"for a pointer-type argument, allow passing a pointer to byte arrays"
	#optAllowByteArraysPtr 
	
	"if function returns a pointer, return nil if pointer is null"
	#optReturnNullAsNil  
		
	"If function returns a pointer, fail primitive if pointer is null.
	Takes preference over #returnNullAsNil 
	Default: disabled. "
	"#optFailOnReturnNull"	

	"if function returns a pointer, convert it to unsigned integer object.
	Default: disabled
	#optReturnPtrAsInt "
	
	"If function returns a pointer, convert it to an instance of NBExternalAddress.
	Takes preference over #returnPtrAsInt.
	Default: enabled.  "
	#optReturnPtrAsExternalAddress
		
	"directly convert between C integers and Smallintegers instead of using proxy 	functions. perform no range checking"
	"#optQuickSmi --  not yet done	" 

	"directly convert between C integers and Smallintegers instead of using proxy 	functions. include range checking"
	"#optQuickSmiSafe --  not yet done	" 
				
	"string conversion"
	
	"for char* parameter type, when passed an instance of ByteString, 
	copy a ByteString's contents on a stack, append null character and pass a pointer to it"
	"#optAcceptStringForCharPtr ---  not yet implemented"	
		
	"for a function returning char* type, convert it to an instance of ByteString"
	"#optReturnCharPtrAsString -- not yet implemented"

	"for a function spec taking arguments indirectly from an array using the x@index convention
	check that the index is not outside x''s bounds "
	#optCheckIndirectArgBounds
	)
