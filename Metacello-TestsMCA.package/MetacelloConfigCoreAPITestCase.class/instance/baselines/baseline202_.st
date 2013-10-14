baseline202: spec
    <version: '2.0.2-baseline' imports: #('2.0.1-baseline')>
    spec
        for: #'common'
        do: [ spec project: 'Copied Example' copyFrom: 'Example Project' with: [ spec preLoadDoIt: #'alternatePreloadForCore' ] ]