FROM ubuntu
RUN RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN chmod +rx startup.sh
CMD startup.sh ; sleep infinity


