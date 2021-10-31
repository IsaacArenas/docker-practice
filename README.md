# docker-practice

The Goal for the next practice is to understand and build a basic system with a docker compose strucuture ... the system would be already be build your goals :

- generate the dockerfile to build the container.
- generate the docker-compose.yml to run the system.
- understand the network base and the logic behind the system itself 
- play and break stuff on your local env.


# The System 
This is a 3 image base system compose by 3 elements.

- vueproject (VueJs)
- flaskproject (Python api)
- database (mariadb)

As mention before the system is ready to be integrated no coding is needed for this example.

So This is what we are trying to build...

**image here 

as shown in the picture we would have 2 networks one containing tha api and database and one containing only the frontend.


# Building The FrontEnd
The FrontEnd can be build using the script on the root folder 
```shell 
# the next line would create a tag name frontend:1.0
$ ./build_frontend.sh frontend:1.0
```

# Using the FrontEnd

# Using The Database
The Database folder contains an ```set_db.sql``` script that initialize the db with the next steps 

- create an **admin** user with the password **juiceBoxes** 
- assign all priviledge to that user
- create a database called **WORKSHOP**
- create a table called **images**
- insert rows into the table

For this on execution you can use a mysql or mariadb database just by mounting the sql file on the entrypoint directory would executed on initialization of the container.

On your ```docker-compose.yml``` you can set something like 

```yaml
- services:
    - database
    # ...
```
