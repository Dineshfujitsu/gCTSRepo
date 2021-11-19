@Library('piper-lib-os') _

pipeline {
    
    agent any
    
    parameters {
        booleanParam(name: "RELEASE", defaultValue: false)
    }
    
    stages {
        stage("Unit Tests") {
            steps {
				gctsExecuteABAPUnitTests(
				  script: this,
				  host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
				  client: '100',
				  abapCredentialsId: 'ABAPUserPasswordCredentialsId',
				  repository: 'dineshfujitsu-gctsrepo',
				)
            }
        }
        
        stage("Rollback") {
            steps {
                script {
                    if (params.RELEASE) {
						gctsRollback(
						  script: this,
						  host: 'http://hana4poc.zwtkfpvhnzsehekvcftg5kfdud.rx.internal.cloudapp.net:8002',
						  client: '100',
						  abapCredentialsId: 'ABAPUserPasswordCredentialsId',
						  repository: 'dineshfujitsu-gctsrepo',
						)
                    } 
                }
            }
        }
    }
}

