#!/usr/bin/env groovy

pipeline {
	agent {
		docker { image 'arduino-build' }
	}
	stages {
		stage('Stage 1') {
			steps {
				sh 'mkdir foo'
			}
		}
		stage('Stage 2') {
			steps {
				sh 'touch foo/file'
			}
		}
	}
}
