pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
               sshagent(['ssh-key']) {
               sh 'scp credentials.sh root@164.90.180.161:/home'
               sh 'cd /home'
               sh 'sudo bash credentials.sh ayamorsi aya.morsi163@gmail.com'
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
