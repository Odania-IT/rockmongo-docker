# rockmongo_docker

Simple rockmongo for docker. I use it for development purposes together with fig. No authentication is required.

Example fig.yml:
```
mongodb:
  image: mongo:latest
  ports:
    - "127.0.0.1:27017:27017"
    - "127.0.0.1:27018:27018"
rockmongo:
  image: odaniait/rockmongo-docker:latest
  ports:
    - "127.0.0.1:8081:80"
  links:
    - mongodb
```

Afterwords you can access rockmongo with your browser via http://127.0.0.1:8081
