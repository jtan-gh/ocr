# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory to /app
WORKDIR /app

# Install system dependencies
RUN apt-get update && \
  apt-get install -y \
  tesseract-ocr \
  libgl1-mesa-glx \
  libglib2.0-0 \
  libsm6 \
  libxext6 \
  libxrender1 \
  && rm -rf /var/lib/apt/lists/*

# Copy the requirements file into /app and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Jupyter Notebook
EXPOSE 8888

# Run Jupyter Notebook server
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]

# Optionally, bind the src directory to avoid rebuild
# RUN mkdir src
# COPY src ./src
# CMD ["python", "src/main.py"]
