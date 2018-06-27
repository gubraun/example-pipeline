#!/usr/bin/env groovy

pipeline {
	agent {
		docker { image 'arduino-build' }
	}
	stages {
		stage('Stage 1') {
			steps {
				sh 'git clone https://github.com/PolySync/oscc'
			}
		}
		stage('Stage 2') {
			steps {
				cd oscc
				cd firmware
				mkdir build
				cd build
				sh 'cmake .. -DKIA_SOUL=ON'
				sh 'make'
			}
		}
	}
}
