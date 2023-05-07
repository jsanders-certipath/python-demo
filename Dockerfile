FROM python:alpine3.17

USER root

# RUN adduser -h /app -u 1337 test_user -D

WORKDIR /app

# Add source code files to WORKDIR
ADD . .

# install dependencies
RUN pip install -U -r requirements.txt

# USER test_user

EXPOSE 80
CMD ["python", "main.py"]
