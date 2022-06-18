pipeline {
    agent { label 'dockerfile' }
    environment {
    registry = "mastermole/httpd_pipeline"
    registryCredential = 'dockerhub'
    dockerImage = ''
    }
    stages { 
        stage('Checkout external proj') {
        steps {
<<<<<<< HEAD
            checkout scm
                
=======
            checkout scm 
    //      git branch: 'main',
     //           credentialsId: 'ssh-github-key',
      //          url: 'git@github.com:mastermole0310/my_httpd.git'

         //   sh "ls -lat"
>>>>>>> 646139fdf8752e909fe86be9665ef8424b90b2cd
        }
    }

        stage('Building our image') { 
            steps { 
                script { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            } 
        }
        stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        }
    }    
}
