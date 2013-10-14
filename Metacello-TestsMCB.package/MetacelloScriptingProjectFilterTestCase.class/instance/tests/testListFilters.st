testListFilters
  Metacello new
    baseline: 'GithubRefIV';
    repository: 'filetree://' , externalDirectory fullName;
    silently;
    load.
  Metacello new
    configuration: 'Issue32';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    get.
  Metacello new
    baseline: 'Issue32';
    repository: 'dictionary://Metacello_External_Test_Repository';
    silently;
    get.
  self
    validateImageNameFilter;
    validateImageCollectionFilter;
    validateImageBlockFilter.
  self
    validateRegistryNameFilter;
    validateRegistryCollectionFilter;
    validateRegistryBlockFilter