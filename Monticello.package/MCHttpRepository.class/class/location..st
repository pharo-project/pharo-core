instance creation
location: location

	^ MCServerRegistry uniqueInstance repositoryAt: location credentialsDo: [ :username :password |
			self new
				location: location;
				user: username;
				password: password ].