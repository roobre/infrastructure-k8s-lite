ARG UPST_IMAGE=newrelic/infrastructure-k8s
ARG UPST_TAG=latest

FROM ${UPST_IMAGE}:${UPST_TAG}

COPY --chmod=644 nri-kubernetes-definition.yml /var/db/newrelic-infra/newrelic-integrations/nri-kubernetes-definition.yml
