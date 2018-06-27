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
				sh 'cd oscc && git reset --hard 887356fe692c71f78f7236a398b74d6784c6e103'
			}
		}
		stage('Stage 2') {
			steps {
				sh 'cd oscc/firmware && mkdir build && cd build && cmake -DVEHICLE=kia_soul -DCMAKE_BUILD_TYPE=Release .. && make'
			}
		}
	}
}
