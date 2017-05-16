sshCredentials
	^ SshCredentials ifNil: [ SshCredentials := IceSshCredentials new ]