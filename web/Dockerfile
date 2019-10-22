FROM python:3.8.0
 
# Create the group and user to be used in this container
RUN groupadd flaskgroup && useradd -m -g flaskgroup -s /bin/bash flask
 
# Create the working directory (and set it as the working directory)
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
 
# Install the package dependencies (this step is separated
# from copying all the source code to avoid having to
# re-install all python packages defined in requirements.txt
# whenever any source code change is made)
COPY requirements.txt /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt
 
# Copy the source code into the container
COPY . /usr/src/app
 
RUN chown -R flask:flaskgroup /usr/src/app
 
USER flask
