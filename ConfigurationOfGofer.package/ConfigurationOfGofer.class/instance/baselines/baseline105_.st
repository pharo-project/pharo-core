baseline105: spec
  <version: '1.0.5-baseline'>
  spec
    for: #'common'
    do: [ 
      spec blessing: #'baseline'.
      spec
        package: 'Gofer-Core';
        package: 'Gofer-Tests' with: [ spec requires: 'Gofer-Core' ].
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('Gofer-Core');
        group: 'Tests' with: #('Gofer-Tests') ].
  spec
    for: #'pharo'
    do: [ spec repository: 'http://www.squeaksource.com/Pharo' ].
  spec
    for: #'pharo1.0.x'
    do: [ 
      spec repository: 'http://seaside.gemtalksystems.com/ss/metacello'.
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.pharo10';
        package: 'Gofer-Tests' with: 'Gofer-Tests.pharo10' ].
  spec
    for: #'pharo1.1.x'
    do: [ 
      spec repository: 'http://seaside.gemtalksystems.com/ss/metacello'.
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.pharo10';
        package: 'Gofer-Tests' with: 'Gofer-Tests.pharo10' ].
  spec
    for: #'squeak'
    do: [ 
      spec repository: 'http://seaside.gemtalksystems.com/ss/metacello'.
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.squeak';
        package: 'Gofer-Tests' with: 'Gofer-Tests.squeak' ].
  spec
    for: #'gemstone'
    do: [ 
      spec repository: 'http://seaside.gemtalksystems.com/ss/metacello'.
      spec package: 'Gofer-Tests' with: 'Gofer-Tests.gemstone' ]