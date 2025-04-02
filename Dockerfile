FROM python:3.10.12-alpine
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8000
ARG API_KEY_ARG
ENV WEATHER_API_KEY=${API_KEY_ARG}
CMD python ./server.py