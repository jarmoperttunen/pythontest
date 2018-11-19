pipeline {
    agent any 
    stages {
        stage('build') {
            steps {
                sh 'echo "Hello Uni"'
 		sh '''
                    echo "Multiline shell steps works too"
		    pwd
                    whereis robot
		    sudo --help
		    robot --help
		    
		    
		   '''
            }
        }
    }
}


