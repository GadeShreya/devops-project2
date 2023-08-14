FROM python:3.8

# Install necessary system packages
RUN apt-get update && apt-get install -y libsystemd-dev libsystemd0 libdbus-1-dev

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application files
COPY . /app/

# Specify the command to run your application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

