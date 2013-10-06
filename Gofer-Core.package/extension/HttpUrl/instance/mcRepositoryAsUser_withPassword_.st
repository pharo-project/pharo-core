mcRepositoryAsUser: usernameString withPassword: passwordString
	
	^ MCHttpRepository location: self asString user: usernameString password: passwordString.