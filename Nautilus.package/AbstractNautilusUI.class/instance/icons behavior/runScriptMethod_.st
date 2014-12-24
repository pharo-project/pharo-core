runScriptMethod: aMethod
	"Perform the method as a script method"
 
	aMethod methodClass baseClass perform: aMethod selector.
	UIManager default inform: 'Script executed: ', aMethod name asString  