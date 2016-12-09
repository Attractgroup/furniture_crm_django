
FROM python:3.5
ENV PYTHONUNBUFFERED 1

# Requirements have to be pulled and installed here, otherwise caching won't work
COPY ./req.txt /requirements/req.txt

RUN pip install -r /requirements/req.txt \
    && groupadd -r django \
    && useradd -r -g django django

RUN apt-get update \
    && apt-get install gettext
