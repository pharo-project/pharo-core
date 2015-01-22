isScriptMethod
	"Return true if the method is tagged with <script> pragma"
	
    ^ (self methodClass isMeta) and: [ 
			self numArgs isZero and: [ self pragmas anySatisfy: [:each | each keyword = #script ]]]