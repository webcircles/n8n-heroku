FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli

RUN mkdir /home/node/packages/cli/.n8n/ && cd /home/node/packages/cli/.n8n/ && mkdir nodes && cd nodes && npm install @telepilotco/n8n-nodes-telepilot

ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
