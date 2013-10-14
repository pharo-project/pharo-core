baselineProjectSpec
  | registration projectSpec project |
  project := MetacelloMCBaselineProject new.
  projectSpec := project baselineOfProjectSpec.
  ^ projectSpec
    name: 'DiscGolf';
    className: 'ConfigurationOfDiscGolf';
    versionString: project singletonVersionName;
    repository: 'http://example.com/repository/OrchardPark';
    yourself