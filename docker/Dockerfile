#new
FROM ubuntu:18.04
build-container:
  stage: build
  rules:
    - if: '$CI_COMMIT_BRANCH == $CI_DEFAULT_BRANCH'
      variables:
        image_tag: "$CI_REGISTRY_IMAGE"
      changes:
        - Dockerfile
    - if: '$CI_COMMIT_BRANCH != $CI_DEFAULT_BRANCH'
      variables:
        image_tag: "$CI_REGISTRY_IMAGE:$CI_COMMIT_REF_SLUG"
      changes:
        - Dockerfile
  services:
    - docker:18-dind
  before_script:
    - docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD" $CI_REGISTRY
  script:
    - docker build --pull -t ${image_tag} .
    - docker push ${image_tag}
RUN apt-get update
RUN apt-get install -y nginx
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
