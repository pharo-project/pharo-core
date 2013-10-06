isDebuggerPresent
	"Indicates whether the calling process is running under the context of a debugger.."	
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ NBFFICallout stdcall: #( BOOL IsDebuggerPresent()) module: #kernel32
