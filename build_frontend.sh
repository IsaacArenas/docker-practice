docker run -v ${PWD}/vueproject:/app/ -w /app node:latest npm run instabuild
docker build ./vueproject -t $1