## Karate + Docker

Maven dependencies are cached inside the image, because you don't want to download them multiple times before starting/running the tests, right? :)

Maven command is executed in the `maven_runner.sh`, that reports back to the `docker run` setting the appropriate exit code != 0 in case of test failures. This can be used on your CI to decide what to do next on the workflow.

### Build docker image

`docker build -t karate_docker .`

### Run docker image

`docker run karate_docker`

Happy Dockarat'ing!
