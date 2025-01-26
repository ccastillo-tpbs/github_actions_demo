# Use the official Python image
FROM python:3.9-slim

# Set environment variables to prevent Python from writing .pyc files and buffering stdout/stderr
# See: https://docs.python.org/3/using/cmdline.html#envvar-PYTHONDONTWRITEBYTECODE
# See: https://docs.python.org/3/using/cmdline.html#envvar-PYTHONUNBUFFERED
# We use this option because it is recommended for production use in Django documentation.
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project files into the container
COPY . .

# Expose the app port
EXPOSE 8000

# Start the Django app using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "myproject.wsgi:application"]
