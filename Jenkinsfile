library('piper-lib-os') _


stage('Deploy') {
  node {
    gctsDeploy(
      script: this,
      host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId2',
      repository: 'dineshfujitsu-gctsrepo',
      remoteRepositoryURL: "https://github.com/Dineshfujitsu/gCTSRepo.git",
      vSID: 'S4D',
      rollback: true,
      verbose: true
    )
  }    
}
