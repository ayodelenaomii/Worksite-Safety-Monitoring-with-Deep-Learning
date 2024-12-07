# Dockerfile for Worksite Safety Monitoring
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the application port (if applicable)
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
