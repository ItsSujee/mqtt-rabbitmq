FROM rabbitmq:3.9-management

ARG USER
ARG PASS

RUN echo "default_user = $USER\ndefault_pass = $PASS\nloopback_users = none" > /etc/rabbitmq/rabbitmq.conf

RUN sed -i 's/"//g' /etc/rabbitmq/rabbitmq.conf

