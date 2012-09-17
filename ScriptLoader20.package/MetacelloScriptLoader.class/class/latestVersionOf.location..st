source
latestVersionOf: packageName location: location

  | repository sortMczs fileToLoad | 
  
  repository := MCHttpRepository location: location.
  sortMczs := [:a :b |
    [(a findBetweenSubStrs: #($.)) allButLast last asInteger > (b  
      findBetweenSubStrs: #($.)) allButLast last asInteger]
    on: Error do: [:ex | false]].
  
  fileToLoad := (repository readableFileNames asSortedCollection: sortMczs) detect: 
    [:file | file beginsWith: (packageName, '-')].
  
  ^ fileToLoad