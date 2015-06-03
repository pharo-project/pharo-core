isScriptMethod
	"Return true if the method is tagged with <script> pragma"

	^ method methodClass isMeta
		and: [ method numArgs isZero and: [ method pragmas anySatisfy: [ :each | each keyword = #script ] ] ]