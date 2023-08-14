FROM python:3.8

# Install D-Bus and other dependencies
RUN apt-get update && \
    apt-get install -y libsystemd-dev libsystemd0

# Set the working directory in the container
WORKDIR /app

# Copy your project's requirements.txt to the container
COPY requirements.txt /app/

# Install Python packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your project files
COPY . /app/

# Your other Dockerfile commands and configurations

# Example: Run your application
CMD ["python", "app.py"]

