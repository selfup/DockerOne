#### Using Docker

Go into this repo and run

```sudo docker build -t railsone .```

This will build a conatiner with: rbenv/Ruby/Rails/NodeJS/Postgres

This container will stay running once built, so if you want to kill it, run (in a new terminal or pane):

```sudo docker ps -a```

Find the CONATINER_ID of the most recent build

Copy it and replace ```container_to_be``` with the copied SHA

```sudo docker stop conatiner_to_be /bin/bash```

Wait a few seconds and watch it shutdown.

Now you can:

```sudo docker exec -it container_to_be /bin/bash```

Play around for a bit and then kill it with the ```sudo docker stop conatiner_to_be /bin/bash``` command.

Enjoy!


