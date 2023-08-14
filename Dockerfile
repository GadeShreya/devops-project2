# Use an appropriate base image that includes Python
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && \
    apt-get install -y libgirepository1.0-dev libsystemd-dev

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application files into the container
COPY . /app/

# Expose the port your Django app will run on
EXPOSE 8080

# Command to run your Django app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]

