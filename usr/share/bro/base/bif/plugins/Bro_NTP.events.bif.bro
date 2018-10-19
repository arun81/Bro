# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/analyzer/protocol/ntp/events.bif (plugin mode).

## Generated for all NTP messages. Different from many other of Bro's events,
## this one is generated for both client-side and server-side messages.
##
## See `Wikipedia <http://en.wikipedia.org/wiki/Network_Time_Protocol>`__ for
## more information about the NTP protocol.
##
## u: The connection record describing the corresponding UDP flow.
##
## msg: The parsed NTP message.
##
## excess: The raw bytes of any optional parts of the NTP packet. Bro does not
##         further parse any optional fields.
##
## .. bro:see:: ntp_session_timeout
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
export {
global ntp_message: event(u: connection , msg: ntp_msg , excess: string );


} # end of export section
module GLOBAL;
