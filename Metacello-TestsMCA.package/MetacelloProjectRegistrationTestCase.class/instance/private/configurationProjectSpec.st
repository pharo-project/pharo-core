configurationProjectSpec
  | registration projectSpec project |
  project := MetacelloMCProject new.
  projectSpec := project configurationOfProjectSpec.
  ^ projectSpec
    name: 'DiscGolf';
    className: 'ConfigurationOfDiscGolf';
    versionString: '1.0';
    repository: 'http://example.com/repository/OrchardPark';
    yourself