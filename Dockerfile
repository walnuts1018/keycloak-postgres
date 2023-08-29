FROM quay.io/keycloak/keycloak:22.0

RUN ["/opt/keycloak/bin/kc.sh", "build", "--db=postgres"]

ENTRYPOINT [ "/opt/keycloak/bin/kc.sh" ]
CMD ["--verbose", "start", "--optimized", "--hostname-strict=false", "--hostname-strict-https=false"]
