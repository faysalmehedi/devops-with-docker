
```console
~/Code/devops-with-docker/part02/2.5 $ docker-compose up -d --scale compute=10
load-balancer is up-to-date
Recreating calculator                ... done
Creating scaling-exercise_compute_3  ... done
Creating scaling-exercise_compute_4  ... done
Creating scaling-exercise_compute_5  ... done
Creating scaling-exercise_compute_6  ... done
Creating scaling-exercise_compute_7  ... done
Creating scaling-exercise_compute_8  ... done
Creating scaling-exercise_compute_9  ... done
Creating scaling-exercise_compute_10 ... done
~/Code/devops-with-docker/part02/2.5 $ docker-compose ps
           Name                          Command               State                    Ports                  
---------------------------------------------------------------------------------------------------------------
calculator                    docker-entrypoint.sh npm start   Up      0.0.0.0:3000->3000/tcp,:::3000->3000/tcp
load-balancer                 /app/docker-entrypoint.sh  ...   Up      0.0.0.0:80->80/tcp,:::80->80/tcp        
scaling-exercise_compute_1    docker-entrypoint.sh node  ...   Up      3000/tcp                                
scaling-exercise_compute_10   docker-entrypoint.sh node  ...   Up      3000/tcp                                
scaling-exercise_compute_2    docker-entrypoint.sh node  ...   Up      3000/tcp                                
scaling-exercise_compute_3    docker-entrypoint.sh node  ...   Up      3000/tcp                                
scaling-exercise_compute_4    docker-entrypoint.sh node  ...   Up      3000/tcp                                
scaling-exercise_compute_5    docker-entrypoint.sh node  ...   Up      3000/tcp                                
scaling-exercise_compute_6    docker-entrypoint.sh node  ...   Up      3000/tcp                                
scaling-exercise_compute_7    docker-entrypoint.sh node  ...   Up      3000/tcp                                
scaling-exercise_compute_8    docker-entrypoint.sh node  ...   Up      3000/tcp                                
scaling-exercise_compute_9    docker-entrypoint.sh node  ...   Up      3000/tcp
```


