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
		    echo $DISPLAY
		    export DISPLAY=:0
		    echo $DISPLAY
		    xclock                 		    
		   '''
            }
        }
    }
}


