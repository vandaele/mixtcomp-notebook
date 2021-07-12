# mixtcomp-notebook

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/vandaele/mixtcomp-notebook/master)

Run RMixtComp notebooks into the cloud using the Binder service by clicking the badge above.

If you need a persistent environment and/or more calculation power, follow the instructions in the next section.

## Run the notebooks locally with Docker

* Install Docker
* Clone this repository
  ```
  git clone https://github.com/vandaele/mixtcomp-notebook.git
  cd mixtcomp-notebook
  ```
* Launch a Docker container
  ```
  docker run --rm -p 8888:8888 -v ${PWD}:/home/jovyan vandaele/mixtcomp-notebook
  ```
  - `--rm` will automatically delete the container once stopped
  - `-p` redirects the Jupyter Notebook interface from the container to your local system
  - `-v` mounts the current directory (this repo) to the `home/jovyan` directory of the docker container
* Visit the link displayed in the console output to access the Jupyter interface
* Use Ctrl-C from the terminal, or the Quit button from the Jupyter interface to stop the container