helm blue/green switch
======================

probably a shitty way to do it, but what the hell

0. start up [a docker registry in minikube](https://github.com/dradetsky/minikube-docker-registry)
1. build some [versioned images](https://github.com/dradetsky/nginx-bg-imgs) like
   ```
   ./version-build.sh 0
   ./version-build.sh 1
   ./version-build.sh 2
   ```
2. `./setup.sh`
3. `addr=$(minikube service switch --url) ; curl $addr`
4. `./upgrade.sh blue 1`
5. `./flip.sh`
6. `./upgrade.sh green 2`
6. `./flip.sh`
