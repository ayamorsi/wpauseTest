pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
               sshagent(['ec2-user']) {
               //sh 'scp credentials.sh root@164.90.180.161:/home'
               sh 'cd /home'
              //sh 'bash credentials.sh ayamorsi aya.morsi163@gmail.com'
               sh 'ls'
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
