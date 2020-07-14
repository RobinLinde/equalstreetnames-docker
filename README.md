# equalstreetnames-docker
This is a Dockerfile for [EqualStreetNames](https://github.com/openknowledgebe/equalstreetnames/)
## Tags
Various tags are available, each corresponding with a city submodule.

- assen
- belgrade
- berlin
- brugge
- brussels
- gent
- leuven

## Usage
Simply run the Docker container, with an environment variable called "MAPBOX_TOKEN" containing your api key for Mapbox.

    docker run --name equalstreetnames -p 1234:1234 -e MAPBOX_TOKEN=APIKEY robinvanderlinde/equalstreetnames:CITY

