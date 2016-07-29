system: command
	"LibC system: 'sleep 3'"
	
	^ self ffiCall: #(int system #(char * command)) module: self