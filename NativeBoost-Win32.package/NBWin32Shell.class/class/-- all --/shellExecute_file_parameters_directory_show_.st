shellExecute: lpOperation file: lpFile parameters: lpParameters directory: lpDirectory show: nShowCmd
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^ self nbCall: #( 
			HINSTANCE ShellExecuteA(
     				0,
     				LPCTSTR lpOperation,
         			LPCTSTR lpFile,
     				LPCTSTR lpParameters,
     				LPCTSTR lpDirectory,
        			INT nShowCmd)) module: 'Shell32.dll'
	
