# Use the official Python image
FROM python:3.12-slim

# Set the working directory
WORKDIR /code

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code directory
COPY src /code/src

# Command to run the app
CMD ["streamlit", "run", "src/main.py"]
