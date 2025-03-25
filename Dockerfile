# Use an official Python runtime as the base image
FROM python:3.13.2

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents (your API) into the container at /app
COPY . /app

# Install any necessary dependencies
RUN pip install -r requirements.txt

# Expose the port your API is running on
EXPOSE 5000

# Define environment variable for Flask (optional, if you're using Flask)
ENV FLASK_APP=app.py

# Command to run your API (for Flask, this would be `flask run`)
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
