shellExecute: hwnd lpOperation: opString lpFile: fileString lpParameters: parmString lpDirectory: dirString nShowCmd: anInteger
	"Opens or prints the specified file, which can be an executable or document file.
		HINSTANCE ShellExecute(
	  		HWND hwnd,			// handle to parent window
			LPCTSTR lpOperation,	// pointer to string that specifies operation to perform
			LPCTSTR lpFile,		// pointer to filename or folder name string
			LPCTSTR lpParameters,	// pointer to string that specifies executable-file parameters 
			LPCTSTR lpDirectory,	// pointer to string that specifies default directory
			INT nShowCmd 			// whether file is shown when opened
		);"
	<apicall: long 'ShellExecuteA' (long char* char* char* char* ulong) module:'shell32.dll'>