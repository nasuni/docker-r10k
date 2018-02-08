# R10K Docker Image

## Source
https://github.com/puppetlabs/r10k

## Run example
This image supports any R10K command passed directly to the container.
```
docker run -it \
  -v $(pwd)/Puppetfile:/Puppetfile \
  nasuni/r10k puppetfile check
```
```
docker run -it \
  -v $(pwd)/Puppetfile:/Puppetfile \
  nasuni/r10k puppetfile install --verbose
```
```
docker run -it \
  -v $(pwd)/Puppetfile:/Puppetfile \
  -v $(pwd)/cache:/var/cache/r10k \
  nasuni/r10k puppetfile install --verbose
```
