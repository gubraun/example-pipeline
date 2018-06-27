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
				sh 'cd oscc/firmware && mkdir build && cd build && cmake -DVEHICLE=kia_soul -DCMAKE_BUILD_TYPE=Release .. && make'
			}
		}
	}
}
