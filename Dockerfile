ARG UPST_IMAGE=newrelic/infrastructure-k8s
ARG UPST_TAG=latest

FROM ${UPST_IMAGE}:${UPST_TAG}
ARG INTERVAL=30

RUN sed -i "s/interval: 15/interval: ${INTERVAL}/" /var/db/newrelic-infra/newrelic-integrations/nri-kubernetes-definition.yml
