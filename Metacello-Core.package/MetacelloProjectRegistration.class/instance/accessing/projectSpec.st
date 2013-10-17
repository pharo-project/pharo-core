projectSpec
  ^ self
    configurationProjectSpecIfPresent: [ :spec | spec ]
    ifAbsent: [ self baselineProjectSpec ]