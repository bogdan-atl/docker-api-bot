FROM python:3.8

WORKDIR /home

ENV token="858860556:AAEgnFVwQdP0ECSZGxAAMHpTlFWtUG40Ce4"
ENV base_url="https://telegg.ru/orig/bot"


ENV TZ=Europe/Moscow
RUN pip install -U pip python-telegram-bot
COPY *.py ./

ENTRYPOINT ["python", "python-api-bot.py"]

