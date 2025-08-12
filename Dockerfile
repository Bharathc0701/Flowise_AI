FROM python:3.11-slim

# Set a working directory
WORKDIR /app

# Create virtual environment
RUN python -m venv /opt/venv

# Make sure we use venv's pip
ENV PATH="/opt/venv/bin:$PATH"

# Copy and install requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your code
COPY . .

CMD ["python", "app.py"]
