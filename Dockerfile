FROM node:24-slim AS base

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

FROM base AS depemdencies
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install

FROM base AS final
WORKDIR /usr/src/app

COPY --from=depemdencies /usr/src/app/node_modules ./node_modules

COPY requirements.txt ./

RUN pip install -r requirements.txt --break-system-packages

USER node

COPY --chown=node:node . .

EXPOSE 3000 8000

CMD [ "npm", "run", "dev"]