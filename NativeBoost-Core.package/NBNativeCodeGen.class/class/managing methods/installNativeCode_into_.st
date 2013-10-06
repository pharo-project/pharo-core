installNativeCode: bytes into: method 

	"install a native code into a compiled method"

	"Installing/removing native code directly:
		In some cases user(s) may need it, like in case if  you want to update/flush/recompile generated code 
		for a number of methods due to some change in environment.
	
		For example, my class(es) might have a 'DeveloperMode' flag, which depending on its value may affect a generated code
		in order to do some additional checks at runtime (when turned on), and suppress them (when turned off). 
		And so, in order to switch between those modes, we need a way to flush native code in affected methods.

		Also, since a plugin having no way to determine who provided a native code, users may implement own code generators
		(or just load code from file/cache) instead of using facilities provided by NativeBoost. "
	
	
	| trailer newMethod |
	trailer := CompiledMethodTrailer new.

	trailer 
		nativeCode: bytes
		platformId: NativeBoost platformId 
		sourcePointer: method trailer sourcePointer.
	newMethod :=  method copyWithTrailerBytes: trailer.
	method methodClass methodDict at: method selector put: newMethod.

	^ newMethod
