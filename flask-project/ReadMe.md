# Python BackEnd API application
 
 ## Goals
 create a docker file with the next specifications :
  - Container should be based on ```python:3.9-slim-buster```
  - working directory should be set to ```/app```
  - the next files needas to be copied into the working directory:
    - entrypoint.sh
    - main.py
    - requirements.txt
  - execute a pip installation against the requirements.txt file ```pip3 install -r requirements.txt```
  - execute a permission change on the files inside the working directory to add read and execute access to everything ```chmod -R a+rx /app/*```
  - add the ```entrypoint.sh``` as an entrypoint
