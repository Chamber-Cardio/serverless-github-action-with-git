# Container image that runs your code
FROM nikolaik/python-nodejs:python3.11-nodejs18

LABEL version="1.0.0"
LABEL repository="https://github.com/Chamber-Cardio/serverless-github-action-with-git"
LABEL homepage="https://github.com/Chamber-Cardio/serverless-github-action-with-git"
LABEL maintainer="Chamber Cardio <devs@chambercardio.com> (https://www.chambercardio.com/)"

LABEL "com.github.actions.name"="Serverless wtih Git"
LABEL "com.github.actions.description"="Wraps the Serverless Framework to enable common Serverless commands, includes Git"
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="red"

RUN apt update && apt install -y git

RUN npm i -g serverless@3.x
ENTRYPOINT ["serverless"]
