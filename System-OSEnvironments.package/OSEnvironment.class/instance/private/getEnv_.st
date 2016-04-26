getEnv: string
	"This method calls the Standard C Library getenv() function" 
	 ^ self ffiCall: #( String getenv (String string) ) module: LibC