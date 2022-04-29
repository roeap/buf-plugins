FROM python:3.10-slim

COPY pyproject.toml poetry.lock /opt/plugin/

WORKDIR /opt/plugin

RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install

ENTRYPOINT ["python", "-m", "betterproto.plugin"]
