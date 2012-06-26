private
httpClient
	"Return a new, specifically configured instance of the HTTP client for internal use."
	
	^ ZnClient new
		systemPolicy;
		beOneShot;
		signalProgress: true;
		username: self user password: self password;
		yourself