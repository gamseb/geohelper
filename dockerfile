# Use a base image with Python and Django pre-installed
FROM python:3.8

# Set environment variables for Django
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create and set the working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# Copy the requirements file into the container and install project dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Define the command to run your Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
