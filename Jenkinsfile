pipeline {
    agent any 
    stages {
        stage('build') {
            steps {
                sh 'echo $PATH'
 		sh '''
		    geckodriver --help
		    robot ./robot/valid_login.robot
                    echo "Multiline shell steps works too"
		    pwd
		                      		    
		   '''
            }
        }
    }
}


