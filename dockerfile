# Use the official Python image
FROM python:3.11-slim

# Set working directory in the container
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app code
COPY . .

# Expose the port
EXPOSE 5006

# Command to run the app
CMD ["python", "app.py"]
