FROM minio/mc:RELEASE.2023-09-07T22-48-55Z

LABEL maintainer="Jyotirmoy Bandyopadhayaya <hi@b68.dev>"
LABEL repository="https://github.com/BRAVO68WEB/github-action-r2-sync"
LABEL homepage="https://github.com/BRAVO68WEB/github-action-r2-sync"

LABEL com.github.actions.name="R2 Backup"
LABEL com.github.actions.description="Mirror a repository to a Cloudflare R2 bucket"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="orange"

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
