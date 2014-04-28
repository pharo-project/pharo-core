commentForCurrentUpdate
 ^ '13230 clean system organization
	https://pharo.fogbugz.com/f/cases/13230
- clean ScriptLoader
	
Postscript:

Smalltalk globals organization removeMissingClasses.
ScriptLoader new
	removeScriptMethods;
	removeUpdateMethods.
ScriptLoader resetLogStream.
	'