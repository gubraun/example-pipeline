#!/usr/bin/env groovy

pipeline {
	agent {
		docker { image 'arduino-build' }
	}
	stages {
		stage('Stage 1') {
			steps {
				mkdir foo
			}
		}
		stage('Stage 2') {
			steps {
				touch foo/file
			}
		}
	}
}
