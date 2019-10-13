FROM kamochi/hylang:latest

COPY . /opt/app
WORKDIR /opt/app

RUN pipenv install
CMD pipenv run hy app.hy
