FROM node:16.0-alpine

ARG ORG_ID
ARG PROJECT_ID
ARG VERCEL_TOKEN

ENV WORKDIR /usr/src/app
WORKDIR $WORKDIR
RUN mkdir -p $WORKDIR
COPY .npmrc package.json package-lock.json ./
RUN npm install --no-audit

COPY . .

RUN npm run build

RUN npm i vercel@23

RUN mkdir .vercel

RUN echo "{\"orgId\":\"$ORG_ID\",\"projectId\":\"$PROJECT_ID\"}" >> .vercel/project.json

RUN npx vercel deploy --prod --token $VERCEL_TOKEN
