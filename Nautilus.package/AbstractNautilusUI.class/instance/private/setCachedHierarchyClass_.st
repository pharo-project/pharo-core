setCachedHierarchyClass: aClass
    | classesToBuild |
    model showInstance 
        ifTrue:  [ classesToBuild := (aClass withAllSuperclasses, aClass allSubclasses) select: [ :class | class isClassSide not ] ]
        ifFalse: [ classesToBuild := (aClass class withAllSuperclasses, aClass class allSubclasses) select: [ :class | class isClassSide ] ].
    cachedHierarchy := SortHierarchically buildHierarchyForClasses: classesToBuild.