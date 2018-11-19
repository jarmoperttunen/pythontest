pipeline {
    agent { docker { image 'python:3.5.1' } }
    stages {
        stage('build') {
            steps {
                sh 'echo "Hello Uni"'
 		sh '''
                    echo "Multiline shell steps works too"
		    pwd
                    ls -lah
		    ls /usr/bin
		   '''
            }
        }
    }
}


