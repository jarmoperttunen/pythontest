pipeline {
    agent any 
    stages {
        stage('build') {
            steps {
                sh 'echo $PATH'
 		sh '''
		    geckodriver --help
                    echo "Multiline shell steps works too"
		    pwd
		                      		    
		   '''
            }
        }
    }
}


