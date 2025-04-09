# Use the official Python image with the correct version
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the application code
COPY . .

# Install dependencies
RUN pip install flask gunicorn

# Expose the port the app runs on
EXPOSE 5000

# Run the app with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]