ARG UPST_TAG=latest

FROM newrelic/infrastructure-k8s:${UPST_TAG}
ARG INTERVAL=30

RUN sed -i "s/interval: 15/interval: ${INTERVAL}/" /var/db/newrelic-infra/newrelic-integrations/nri-kubernetes-definition.yml
