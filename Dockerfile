FROM python:3.9-buster

WORKDIR /root
ENV PIPENV_PIPFILE /root/Pipfile

COPY Pipfile .
RUN pip install pipenv && pipenv install

COPY main.py .

CMD ["pipenv", "run", "python", "main.py"]
