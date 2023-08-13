# Use the official Python image as the base image
FROM python:3.8

# Set environment variable to run Python in unbuffered mode
ENV PYTHONUNBUFFERED 1

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements file to the container
COPY requirements.txt /code/

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the project files to the container
COPY . /code/

