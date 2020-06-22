# Node NODE-TYPESCRIPT-YARN-PM2-IMAGE

NodeJS with Node, Typescript, yarn, pm2, image

### NOTE
- Don't add PM2 in your package.json
- Don't install @types/node to pm2 
- Don't intall typescript again and again to your runtime env 

### 📦 Installation

Install Docker 
[Docker Documentation](https://docs.docker.com/get-docker/)

### What is Alpine Linux?

Alpine Linux is a Linux distribution built around musl libc and BusyBox. The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications. Read more about Alpine Linux here and you can see how their mantra fits in right at home with Docker images.


### 🔧  Commands

Creating an instance

```
docker run itstalwar/node-ts-pm2-yarn
```

Example For yarn start 

create file pm2-start.json
```
{
    "apps": [
        {
            "name": "node-typescript-yarn-pm2-docker-kubernetes",
            "exec_mode": "cluster",
            "instances": "max",
            "script": "./src/index.ts",
            "interpreter": "ts-node",
            "env": {
                "ENV": "prod"
            },
            "log-date-format": "YYYY-MM-DD HH:mm:ss",
            "log": "/mnt/node-typescript-yarn-pm2-docker-kubernetes.log"
        }
    ]
}
```

package.json edit
```
start: pm2-runtime start pm2-start.json
```



## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://choosealicense.com/licenses/mit/)