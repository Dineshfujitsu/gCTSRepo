library('piper-lib-os') _

stage('Unit Tests') {
  node {
    gctsExecuteABAPUnitTests(
      script: this,
      host: 'https://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8444',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
      repository: 'Dineshfujitsu-gCTSRepo'
    )
  }    
}
