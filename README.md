# carnd-cpp Docker image
Docker image for C++ projects of the Udacity Self-Driving Car Nanodegree (on [Docker Hub](https://hub.docker.com/r/mreichelt/carnd-cpp/))

This Docker images comes with all dependencies needed for Udacity's following C++ projects:

- [CarND-Extended-Kalman-Filter-Project](https://github.com/udacity/CarND-Extended-Kalman-Filter-Project)
- [CarND-Unscented-Kalman-Filter-Project](https://github.com/udacity/CarND-Unscented-Kalman-Filter-Project)
- [CarND-Path-Planning-Project](https://github.com/udacity/CarND-Path-Planning-Project)

## Requirements

- [Docker](https://www.docker.com/) must be installed on your machine

## Usage

Go to your project folder, then:

```sh
# opens an interactive shell, mounts your current directory into /project and forwards port 4567
docker run -v "`pwd`:/project" -p 4567:4567 -it mreichelt/carnd-cpp

# then inside of the Docker shell, build and run as usual, e.g. for Path Planning:
mkdir -p build && cd build && cmake .. && make -j4 && ./path_planning
```

I personally only use the Docker image to be able to automatically build my C++ projects with Travis. If you are interested, check out the [.travis.yml](https://github.com/mreichelt/CarND-Path-Planning-Project/blob/master/.travis.yml) file of my path planning project.

## Known issues

Currently the [CarND-MPC-Project](https://github.com/udacity/CarND-MPC-Project) will not run because `ipopt` is not installed - I tried to add that to the Docker image as well, but had problems compiling it. Contributions welcome! 😀
