# Use an official Python runtime as a parent image
FROM python:3.10.12

# Set the working directory to /app
WORKDIR /app

# Install the package from the Devpi index
RUN pip install -i http://172.28.221.47:3141/bmr/devpiPackages/ helloDevpi --trusted-host 172.28.221.47

# Define the command to run when the container starts
CMD ["bash", "-c", "hello_devpi && pip list -v && pip show helloDevpi"]

