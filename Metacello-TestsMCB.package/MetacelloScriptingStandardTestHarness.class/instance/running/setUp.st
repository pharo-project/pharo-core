setUp
    super setUp.
    registry := MetacelloProjectRegistration registry.
    self setUpRepositories.
    self setUpRepositoryContents.
    MetacelloProjectRegistration resetRegistry