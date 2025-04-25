# Use a base image with Python
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the local files into the container
COPY . .

# Install dependencies
RUN pip install --default-timeout=100 pandas matplotlib scikit-learn joblib

# Run the script
CMD ["python", "firstcode.py"]
