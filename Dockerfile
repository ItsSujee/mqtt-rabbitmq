FROM rabbitmq:3.9-management

ARG PORT
ARG USER
ARG PASS

RUN echo "default_user = $USER\ndefault_pass = $PASS\nlisteners.tcp.default = $PORT" > /etc/rabbitmq/rabbitmq.conf

RUN sed -i 's/"//g' /etc/rabbitmq/rabbitmq.conf

