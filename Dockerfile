# Basic Docker image for Tileserver Middleman

FROM python:3.8.10

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update \
&& apt-get install -y --no-install-recommends
WORKDIR /usr/src/app
COPY . /usr/src/app/
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1

CMD ["python", "middleman.py"]