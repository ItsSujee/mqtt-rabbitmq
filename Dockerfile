FROM rabbitmq:3.9

ARG USER
ARG PASS

RUN printf "default_user = $USER \ndefault_pass = $PASS" > /etc/rabbitmq/rabbitmq.conf

RUN echo /etc/rabbitmq/rabbitmq.conf

RUN "rabbitmq-plugins" "disable" "rabbitmq_prometheus"
