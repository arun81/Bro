# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/analyzer/protocol/gssapi/events.bif (plugin mode).

## Generated for GSSAPI negotiation results.
##
## c: The connection.
##
## state: The resulting state of the negotiation.
##
export {
global gssapi_neg_result: event(c: connection , state: count );

} # end of export section
module GLOBAL;
