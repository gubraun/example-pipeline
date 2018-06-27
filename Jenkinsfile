#!/usr/bin/env groovy

pipeline {
	agent {
		docker { image 'arduino-build' }
	}
	stages {
		stage('Stage 1') {
			steps {
				sh 'rm -rf oscc'
				sh 'git clone https://github.com/PolySync/oscc'
			}
		}
		stage('Stage 2') {
			steps {
				sh 'mkdir oscc/firmware/build'
				sh 'cd oscc/firmware/build && cmake .. -DVEHICLE=kia_soul'
				sh 'cd oscc/firmware/build && make'
			}
		}
	}
}
