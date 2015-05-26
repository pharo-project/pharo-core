setCachedHierarchyClass: aClass
    | classesToBuild |
    classesToBuild :=
    model showInstance 
        ifTrue:  [  (aClass withAllSuperclasses, aClass allSubclasses) reject: [ :class | class isClassSide ] ]
        ifFalse: [  (aClass class withAllSuperclasses, aClass class allSubclasses) select: [ :class | class isClassSide ] ].
    self cachedHierarchy: (SortHierarchically buildHierarchyForClasses: classesToBuild).