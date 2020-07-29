pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
               withCredentials([string(credentialsId: 'ipadress', variable: 'ipadress')]) {
               sh 'ssh aya@$ipadress'
}
            }
        post {
           success{
               echo "======== test success========"
        }
           failure{
               echo "======== test failed========"
        }
     }
        }
    }
}