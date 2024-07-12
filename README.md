# Flask Proxy IP Web Service

This project is a Flask-based web service that acts as a proxy for HTTP requests. It forwards requests to a target URL specified in the `X-Target-URL` header and returns the response back to the client. This can be useful for changing proxies when making requests with Python.

## Prerequisites

Ensure you have the following before setting up the project:

- Python 3.9+
- Docker (if you choose to run the application in a Docker container)

## Installation

### Local Setup

1. **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/your-repo-name.git
    cd your-repo-name
    ```

2. **Create a virtual environment and activate it:**
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows use `venv\Scripts\activate`
    ```

3. **Install the required Python packages:**
    ```bash
    pip install -r requirements.txt
    ```

4. **Run the Flask application:**
    ```bash
    python app.py
    ```

### Docker Setup

1. **Build the Docker image:**
    ```bash
    docker build -t flask-proxy-ip .
    ```

2. **Run the Docker container:**
    ```bash
    docker run -p 8080:8080 flask-proxy-ip
    ```

The application should now be running and accessible at `http://localhost:8080`.

## Usage

To use the proxy service, make an HTTP request to the Flask server with the `X-Target-URL` header set to the URL you want to proxy.

### Example with `curl`

```bash
curl -X GET http://localhost:8080 -H "X-Target-URL: https://httpbin.org/get"
```

Example with Python requests
```bash
import requests

response = requests.get(
    'http://localhost:8080',
    headers={'X-Target-URL': 'https://httpbin.org/get'}
)

print(response.text)
```
