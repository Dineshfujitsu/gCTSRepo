library('piper-lib-os') _

stage('Prepare') {
  node {
    deleteDir()
    checkout scm
    setupCommonPipelineEnvironment script:this    
  }
}  
  
stage('Build') {

}

stage('Deploy Commit') {
  node {
    gctsDeploy(
      script: this,
      host: 'http://192.140.0.4:8444',
      client: '100',
      abapCredentialsId: 'ABAPUserPasswordCredentialsId',
      repository: 'gitRepo',
      remoteRepositoryURL: "https://github.com/Dineshfujitsu/Dineshfujitsu-gCTSRepo.git",
      role: 'TARGET',
      vSID: 'S4D',
      branch: 'main',
      commit: 'commit',
      scope: 'scope',
      rollback: false,
      verbose: true,
      configuration: [dummyConfig: 'dummyval']   
    )
  }    
}
