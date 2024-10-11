# Image Text Clustering Project

This project processes images to detect and cluster text using OCR and clustering techniques. It includes a Docker setup to ensure a consistent environment, so you don’t have to worry about dependencies and system configurations.

## Prerequisites

- **Docker**: Make sure Docker is installed on your machine. You can find installation instructions [here](https://docs.docker.com/get-docker/).

## Steps for Running the Project

1. **Clone the repository**:
  If you haven't already, clone the project repository:
  ```bash
  git clone https://github.com/jtan-gh/ocr
  cd ocr
  ```

2. **Build and Start the Container**
  ```bash
  docker compose build
  docker compose up
  ```

3. **Access the Jupyter Notebook**
  ```bash
  http://127.0.0.1:8888/tre
  ```

## Stopping the Containers
To stop the container, press CTRL+C in the terminal where docker compose up was run.