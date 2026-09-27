FROM python:3.12-slim
WORKDIR /app
COPY . .
RUN chmod +x start.sh
CMD ["bash", "start.sh"]
