lookupSpec: aProjectSpec
  self configurationProjectSpec
    ifNotNil: [ :spec | 
      spec className = aProjectSpec className
        ifTrue: [ ^ spec ] ].
  self baselineProjectSpec
    ifNotNil: [ :spec | 
      spec className = aProjectSpec className
        ifTrue: [ ^ spec ] ].
  ^ nil