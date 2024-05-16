FROM python:3.9

WORKDIR /codeFast

COPY ./requirements.txt /codeFast/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /codeFast/requirements.txt

COPY ./app /codeFast/app

COPY data/dataTeams.json /codeFast/data/dataTeams.json

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]