lookupBaselineSpec
    baselineProjectSpec ifNotNil: [ :spec | ^ spec ].
    ^ configurationProjectSpec