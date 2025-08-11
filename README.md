# deal.II Container 


### Installing Docker
[Docker](https://www.docker.com) can be easily installed on Linux, Windows, and MacOS and facilitates the delivery software in packages called containers, which are isolated and bundle their own software, libraries, and configuration files.

Please first install Docker on your computer following the instructions on the [official website](https://www.docker.com/get-started).


### Building the Docker container
The Docker container can be built by executing the script
```shell
./build-container.sh
```
from the main directory of the repository.
Since deal.II along with many dependencies will be installed, **this step will take some time (> 1 hour)**.


### Running the Docker container
In order to run the Docker container, just execute the script
```shell
./run-container.sh
```


### Deleting the Docker container
In case you later want to remove the Docker image and the respective mounted volume (from running the container), just execute the script
```shell
./delete-container.sh
```
in the main directory of the repository.


### Acknowledgements
This deal.II container is inspired by [frosch-demo](https://github.com/searhein/frosch-demo)
