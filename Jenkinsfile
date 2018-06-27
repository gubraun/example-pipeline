pipeline {
	agent {
		docker { image 'arduino-build' }
	}
	stages {
		stage('Stage 1') {
			steps {
				git clone https://github.com/PolySync/oscc
			}
		}
		stage('Stage 2') {
			steps {
				cd oscc/firmware
				mkdir build
				cd build
				cmake .. -DKIA_SOUL=ON
				make
			}
		}
	}
}
