# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/analyzer/protocol/backdoor/events.bif (plugin mode).

## Deprecated. Will be removed.
export {
global backdoor_stats: event(c: connection , os: backdoor_endp_stats , rs: backdoor_endp_stats );


## Deprecated. Will be removed.
global backdoor_remove_conn: event(c: connection );


## Deprecated. Will be removed.
global ftp_signature_found: event(c: connection );


## Deprecated. Will be removed.
global gnutella_signature_found: event(c: connection );


## Deprecated. Will be removed.
global http_signature_found: event(c: connection );


## Deprecated. Will be removed.
global irc_signature_found: event(c: connection );


## Deprecated. Will be removed.
global telnet_signature_found: event(c: connection , is_orig: bool , len: count );


## Deprecated. Will be removed.
global ssh_signature_found: event(c: connection , is_orig: bool );


## Deprecated. Will be removed.
global rlogin_signature_found: event(c: connection , is_orig: bool , num_null: count , len: count );


## Deprecated. Will be removed.
global smtp_signature_found: event(c: connection );


## Deprecated. Will be removed.
global http_proxy_signature_found: event(c: connection );

} # end of export section
module GLOBAL;
