FROM python:3

# Create a working directory
WORKDIR /workspace

# Copy source code to working directory
COPY ./app.py /workspace
COPY ./requirements.txt /workspace/

# Install packages from requirements.txt
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose port 80
EXPOSE 80/tcp

# Run app.py at container launch
CMD ["python", "app.py"]
