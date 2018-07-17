#!/usr/bin/env groovy

pipeline {
	agent {
		docker { image 'arduino-build' }
	}
	stages {
		stage('Fetch') {
			steps {
				sh 'rm -rf oscc'
				sh 'git clone https://github.com/PolySync/oscc'
				sh 'cd oscc && git reset --hard 887356fe692c71f78f7236a398b74d6784c6e103'
			}
		}
		stage('Build') {
			steps {
				sh 'cd oscc/firmware && mkdir build && cd build && cmake -DVEHICLE=kia_soul -DCMAKE_BUILD_TYPE=Release .. && make'
			}
		}
		stage('Test') {
			steps {
				sh 'cd oscc/firmware && [ -d build ] || mkdir build && cd build && cmake -DTESTS=ON -DVEHICLE=kia_soul -DCMAKE_BUILD_TYPE=Release .. && make run-unit-tests'
			}
		}
	}
}
