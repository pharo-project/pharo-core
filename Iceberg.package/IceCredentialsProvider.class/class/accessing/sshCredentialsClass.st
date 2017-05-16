sshCredentialsClass
	self useCustomSsh ifTrue: [ ^ LGitCredentialsSSH ].
	^ LGitCredentialsSSHAgent
	