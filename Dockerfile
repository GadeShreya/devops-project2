FROM python:3.8
# Set working directory
WORKDIR /app
# Copy requirements file
COPY requirements.txt .
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Copy project files
COPY . .
# Expose port 8000
EXPOSE 8000
# Start the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

