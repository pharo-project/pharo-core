utils
removeScriptMethods
	"self new removeScriptMethods"
	
	((ScriptLoader organization listAtCategoryNamed: 'pharo - scripts') 
		asSortedCollection allButLast) 
			do: [:each | ScriptLoader removeSelector: each].