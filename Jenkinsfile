library('piper-lib-os') _


stage('Deploy') {
  node {
    gctsDeploy(
      script: this,
      host: 'https://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8444',
      client: '100',
      username: 'dinesh',
      password: 'Fujitsu@123',
      repository: 'dineshfujitsu-gctsrepo',
      remoteRepositoryURL: "https://github.com/Dineshfujitsu/gCTSRepo.git",
      role: 'TARGET',
      vSID: 'S4D',
      rollback: false,
      verbose: true
    )
  }    
}

