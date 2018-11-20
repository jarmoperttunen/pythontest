pipeline {
    agent any 
    stages {
        stage('build') {
            steps {
                sh 'echo $PATH'
 		sh '''
		    geckodriver --help
		    whereis firefox
                    pwd
		    xauth list|grep `uname -n`                  		    
		   '''
            }
        }
    }
}


