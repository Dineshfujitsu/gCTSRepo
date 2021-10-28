library('piper-lib-os') _

stage('Unit Tests') {
  node {
    gctsExecuteABAPUnitTests(
      script: this,
      host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
      client: '000',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId2',
      repository: 'Dineshfujitsu-gCTSRepo'
    )
  }    
}
