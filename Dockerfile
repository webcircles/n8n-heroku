FROM n8nio/n8n:latest

USER root

RUN cd /home/node/packages/cli/.n8n/ && mkdir nodes && cd nodes && npm install @telepilotco/n8n-nodes-telepilot

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
