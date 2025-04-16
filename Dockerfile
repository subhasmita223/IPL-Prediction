# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy app code
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on (Flask default is 5000)
EXPOSE 5000



# Run the Flask app
CMD ["python", "strtServer.py"]
