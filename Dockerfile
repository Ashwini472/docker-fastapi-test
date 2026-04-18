# Use Python
FROM python:3.10-slim

# Set the folder inside the container
WORKDIR /code

# Copy your list of libraries and install them
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy your 'app' folder into the container
COPY ./app /code/app

# Tell Docker how to run your app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
