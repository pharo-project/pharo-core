private
httpClient
	"Return a new, specifically configured instance of the HTTP client for internal use."
	
	^ ZnClient new
		systemPolicy;
		beOneShot;
		username: self user password: self password;
		yourself