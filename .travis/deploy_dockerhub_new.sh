# Change into current script directory
cd "$(dirname "$0")"

# Docker: login, build, tag and push
docker login -u $DOCKER_USER -p $DOCKER_PASS
docker build -f Dockerfile -t $REPO:latest . --build-arg branch=$TRAVIS_TAG
docker tag $REPO:latest $REPO:$TRAVIS_TAG
docker push $REPO
