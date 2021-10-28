library('piper-lib-os') _


stage('Deploy') {
  node {
    gctsDeploy(
      script: this,
      host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
      client: '100',
      username: 'ddic',
      password: 'Welcome123',
      repository: 'dineshfujitsu-gctsrepo',
      remoteRepositoryURL: "https://github.com/Dineshfujitsu/gCTSRepo.git",
      role: 'TARGET',
      vSID: 'S4D',
      rollback: false,
      verbose: true
    )
  }    
}

