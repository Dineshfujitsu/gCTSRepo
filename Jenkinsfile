library('piper-lib-os') _


stage('Deploy') {
  node {
    gctsDeploy(
      script: this,
      host: 'https://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8444',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
      repository: 'dineshfujitsu-gctsrepo',
      remoteRepositoryURL: "https://github.com/Dineshfujitsu/gCTSRepo.git",
      vSID: 'S4D',
      rollback: true,
      verbose: true
    )
  }    
}
