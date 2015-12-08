version1052: spec
  <version: '1.0.5.2' imports: #('1.0.5.2-baseline')>
  spec
    for: #'common'
    do: [ 
      spec blessing: #'release'.
      spec
        description:
          '1.0.5.2 (dkh.40) [GemStone]:
- change gemsource: to point to http://seaside.gemtalksystems.com/ss'.
      spec author: 'dkh'.
      spec timestamp: '6/30/2014 11:40'.
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
        package: 'Gofer-Core' with: 'Gofer-Core.gemstone-dkh.136';
        package: 'Gofer-Tests' with: 'Gofer-Tests.gemstone-dkh.131' ]