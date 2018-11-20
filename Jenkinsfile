pipeline {
    agent any 
    stages {
        stage('build') {
            steps {
                sh 'echo $PATH'
 		sh '''
		    geckodriver --help
		    firefox
                    echo "Multiline shell steps works too"
		    pwd
		                      		    
		   '''
            }
        }
    }
}


