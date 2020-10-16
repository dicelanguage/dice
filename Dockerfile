# Step 1: Authenticate
$ echo "$PAT" | docker login docker.pkg.github.com -u timo-cmd --password-stdin
# Step 2: Tag
$ docker tag IMAGE_ID docker.pkg.github.com/timo-cmd/dice/IMAGE_NAME:VERSION
# Step 3: Publish
$ docker push docker.pkg.github.com/timo-cmd/dice/IMAGE_NAME:VERSION
