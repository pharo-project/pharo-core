version1054: spec
  <version: '1.0.5.4' imports: #('1.0.5.2-baseline')>
  spec
    for: #'common'
    do: [ 
      spec blessing: #'release'.
      spec
        description:
          'Gofer 1.0.5.4 (dkh.45)
- .mcz in repository can cripple Gofers ability to read files from a repo'.
      spec author: 'dkh'.
      spec timestamp: '12/3/2014 14:17'.
      spec
        package: 'Gofer-Core' with: 'Gofer-Core-StephaneDucasse.133';
        package: 'Gofer-Tests' with: 'Gofer-Tests-StephaneDucasse.129' ].
  spec
    for: #'pharo1.0.x'
    do: [ 
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.pharo10-dkh.135';
        package: 'Gofer-Tests' with: 'Gofer-Tests.pharo10-dkh.131' ].
  spec
    for: #'pharo1.1.x'
    do: [ 
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.pharo10-dkh.135';
        package: 'Gofer-Tests' with: 'Gofer-Tests.pharo10-dkh.131' ].
  spec
    for: #'squeak'
    do: [ 
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.squeak-dkh.135';
        package: 'Gofer-Tests' with: 'Gofer-Tests.squeak-dkh.131' ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        package: 'Gofer-Core' with: 'Gofer-Core.gemstone-dkh.138';
        package: 'Gofer-Tests' with: 'Gofer-Tests.gemstone-dkh.131' ]