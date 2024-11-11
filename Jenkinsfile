pipeline {
	agent any
	stages {

		stage('Stage-1'){
			steps{
				echo 'Hello World from stage-1'
				sh 'ls -al'
			}

		}
		stage('Stage-2'){
			steps {
				echo 'Hello World from stage-2'
				sh '''#!/bin/bash -x
pwd
ls -al
tag = `echo "$gitlabBranch" | cut -d'/' -f2`
echo "Building docker image with tg $gitlabBranch"
				'''
			}

		}

	}
}
