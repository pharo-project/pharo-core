providerType
	^ ProviderType ifNil: [ ProviderType := IceCredentialsProvider ]