This is based on the assignment on Lecture 53

So I want to create a container based on Postgres version 15.3 and use a named volume.
Get the container up and running (might need to pass in a password env var)

Then upgrade the container to version 15.4 but use the same named volume.
Verify it's up and running etc.


docker container run -d -e POSTGRES_PASSWORD=password --name psql -v psql:/var/lib/postgresql/data postgres:15.3

You can view the logs in the container as it runs (using the follow -f option)
docker container logs -f psql

All good, container should now be running and open for connections.

Next, run version 15.4 under a different container name but using the same named volume

docker container run -d -e POSTGRES_PASSWORD=password --name psql2 -v psql:/var/lib/postgresql/data postgres:15.3

That's it, check your logs using the command above and it should be running and ready to receive connections.

