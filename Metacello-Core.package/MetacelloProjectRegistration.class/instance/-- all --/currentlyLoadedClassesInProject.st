currentlyLoadedClassesInProject
    | classes |
    classes := Set new.
    self
        configurationProjectSpecIfPresent: [ :spec | classes addAll: spec currentlyLoadedClassesInVersion ]
        ifAbsent: [  ].
    self baselineProjectSpecIfPresent: [ :spec | classes addAll: spec currentlyLoadedClassesInVersion ] ifAbsent: [  ].
    ^ classes