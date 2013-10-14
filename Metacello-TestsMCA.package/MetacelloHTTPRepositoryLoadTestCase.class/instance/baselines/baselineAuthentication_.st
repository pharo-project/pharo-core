baselineAuthentication: spec 
	<version: 'authentication'>

	spec
		for: #common
		do: [spec
				project: 'Bogus Project'
				with: [
					spec className: 'BogusConfiguration';
						 file: 'BogusConfiguration';
						 version: 'default';
						 repository: 'http://seaside.gemstone.com/ss/authenticationRequired' username: 'foo' password: 'bar']]