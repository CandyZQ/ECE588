Credit to [@ageitgey](https://github.com/ageitgey/face_recognition#deployment) for the face_recognition package.

## Quick Start
### Setup Docker Environment 
- Clone this Project   
`cd <working_dir> `  
`git clone <url>`  
`cd ECE588`

- Build Image  
`cd ./face_recognition-master`  
`docker build -t face_recognition .` 
This takes a while 

If any step fails due to internet connection, comment it out for now, we can manually install it after creating the container. 

- Build Container  
`docker run --name ece588 --mount type=bind,source=<working_dir>,destination=/ece588 -it face_recognition bash`
Make sure you complete the environment setup if you comment out any lines in the Dockerfile

- Re-enter the container   
`docker start -i ece588`