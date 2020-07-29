pipline {
    agent any
    stages {
        stage('Droplet') {
            steps{
                withCredentials([usernamePassword(credentialsId: 'docker_id', passwordVariable: 'ipadress', usernameVariable: 'name')]) {
                sh 'ssh name@ipadress'
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
