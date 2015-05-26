getCommandLine
	"Returns command-line string for the current process"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(NBTString GetCommandLineA()) 
			module: #kernel32
