# Mega-NJ-Task
##Repository for Mega Neighbor Joining Task 

###How to deploy the task:  
- Clone this repository to your machine   
- if you want deploy the task with your own data then  
  - in Mega-NJ-Task/input folder put your file, edit Mega-NJ-Task/input.yaml file and change 'input-file' to your file name  
  - in a terminal run . ./task-deploy.sh within Mega-NJ-Task folder  
- if you are happy to deploy the task with the sample input file in input folder just run task-deploy.sh as above  

###Information:  

  Task-Name: Mega NJ  
  version: 1.0  
  Description: The task implements neighbour joining method. It was designed in the e-Science Central system.  
  instruction-file: MegaNJ-instruction  
  task-dependencies: {java1.7, Wine1.6+, Mega-CC lib}   
  
Blueprint:  
  
  blueprint-name: Mega-NJ.yaml  
  Docker-images: rawa/mega-cc  
  sizes: 736MB  
  OS-types: ubuntu14.4   
  
Input:  
  
  input-file(s):   
  description:   
  types:   
  
Outputs:  
  
  output-folder: '~/Mega-NJ'  
  output-file(s): {}  
  description:  
  types: {}  
  
Execution-Environment:  
  
  Cloudify-version: 3.2  
  Docker-version: 1.8+  
  OS-type: ubuntu14.04  
  Disk-space: 10 GB  
  RAM: 3 GB  
