# Redirector
Nginx Docker image with envVar ruled configuration

## EnvVars
* SOURCE_DOMAIN - domain which from we redirect. Format: `src.domain.tld`
* TARGET - where we redirect to. Format: `https://tgt.domain.tld`
* REDIRECT_CODE - 301 for a permanent redirect, 302 - for a temporary redirect. Default: `301`
