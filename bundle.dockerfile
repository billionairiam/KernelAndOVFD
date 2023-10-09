FROM busybox
RUN mkdir -p /lib/acon/entrypoint.d/ && echo -e '#!/bin/sh\nexec /bin/sh -il' > /lib/acon/entrypoint.d/start && chmod +x /lib/acon/entrypoint.d/start

RUN echo -e '#!/bin/sh\nexec /bin/whoami' > /lib/acon/entrypoint.d/Whoami && chmod +x /lib/acon/entrypoint.d/Whoami

WORKDIR /
ENTRYPOINT [ "/lib/acon/entrypoint.d/start" ]
