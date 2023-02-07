# A Generative and Mutational Approach for Synthesizing Bug-exposing Test Cases to Guide Compiler Fuzzing

COMFUZZ is a compiler fuzzing framework that combining generative and mutation techniques. Unlike prior work, COMFUZZ devotes to generating the bug-exposing test cases by using historical test programs, and performs the focused testing by leveraging carefully designed bug-guided mutators.


## Docker Image

We provide a [Docker image](https://zenodo.org/record/7602317) to run "out of box". The docker image was tested on a host machine running Ubuntu 18.04.
The docker image contains the following scripts for running COMFUZZ:

* [step1_generator.py](): the script that generates test programs according to historical test programs.
* [step2_init.py](): the script that builds the initial seed pool.
* [step3_harness.py](): the script that performs the differential testing on target compilers.
* [step4_mutation.py](): the script that mutates the interesting test cases for focused and intensive testing.

You can use the following step-by-step instructions to run COMFUZZ:

## Setup
### 1.1 Load the Docker Image
After downloading the [docker image](https://zenodo.org/record/7602317), using below commands to load the docker image on the host machine:
```
Commands that how to load docker image.
docker exec -it comfuzz_container bash
```
### 1.2 Setup Environmental Parameters
After improting the docker container, using the following command to setup the environmental variable before executing COMFUZZ:
```
bash /root/Comfort_all/initialize.sh
```
This shell script will also create MySql databases used for differential testing and mutation.

## Run
You can use the following step-by-step instructions to run COMFUZZ:
### Step1. Generate test program:
```python /root/COMFUZZ/src/step1_generator.py```
### Step2. Build the seed pool:
'''python /root/COMFUZZ/src/step2_init.py```
### Step3. Differential testing:
```python /root/COMFUZZ/src/harness.py```
### Step4. Mutation:
```python /root/COMFUZZ/src/mutation.py```


