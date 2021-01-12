# Redirector
Nginx Docker image with envVar ruled configuration

## EnvVars
* SOURCE_DOMAIN - domain which from we redirect. Format: `src.domain.tld`
* TARGET_DOMAIN - where we redirect to. Format: `tgt.domain.tld`
* SCHEME - target domain protocol. Values: `https` (default) or `http`,`ftp` and so on
