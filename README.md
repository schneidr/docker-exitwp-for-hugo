# Docker image for ExitWP for Hugo

I created this container because I wanted to use the script [exitwp-for-hugo](https://github.com/wooni005/exitwp-for-hugo) without installing too much stuff that I have to remove again from my system afterwards. In the old days I would have created a VM for the task, but nowadays we have Docker.

## Setup

Create two directories, `wordpress-xml` and `build`. Copy `config.yml` and edit it as you need. Place the xml files from your WordPress export into the `wordpress-xml` directory.

## Run

If you only want to use it you can just run it:

    docker run --rm --mount type=bind,src=/path/to/wordpress-xml/,dst=/opt/exitwp-for-hugo/wordpress-xml --mount type=bind,src=/path/to/build/,dst=/opt/exitwp-for-hugo/build --mount type=bind,src=/path/to/config.yaml,dst=/opt/exitwp-for-hugo/config.yaml  geschnei/exitwp-for-hugo

Change `/path/to/...` to the locations where your directory and files are located.

## Build

Clone the repository recursive to check out the exitwp-for-hugo as well

    git clone --recurse-submodules https://github.com/schneidr/docker-exitwp-for-hugo.git

Adapt what you need and build the image:

    docker build --tag exitwp-for-hugo .

Now you can run the image, as above.