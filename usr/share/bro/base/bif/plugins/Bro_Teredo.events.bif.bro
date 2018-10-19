# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/analyzer/protocol/teredo/events.bif (plugin mode).

## Generated for any IPv6 packet encapsulated in a Teredo tunnel.
## See :rfc:`4380` for more information about the Teredo protocol.
##
## outer: The Teredo tunnel connection.
##
## inner: The Teredo-encapsulated IPv6 packet header and transport header.
##
## .. bro:see:: teredo_authentication teredo_origin_indication teredo_bubble
##
## .. note:: Since this event may be raised on a per-packet basis, handling
##    it may become particularly expensive for real-time analysis.
export {
global teredo_packet: event(outer: connection , inner: teredo_hdr );


## Generated for IPv6 packets encapsulated in a Teredo tunnel that
## use the Teredo authentication encapsulation method.
## See :rfc:`4380` for more information about the Teredo protocol.
##
## outer: The Teredo tunnel connection.
##
## inner: The Teredo-encapsulated IPv6 packet header and transport header.
##
## .. bro:see:: teredo_packet teredo_origin_indication teredo_bubble
##
## .. note:: Since this event may be raised on a per-packet basis, handling
##    it may become particularly expensive for real-time analysis.
global teredo_authentication: event(outer: connection , inner: teredo_hdr );


## Generated for IPv6 packets encapsulated in a Teredo tunnel that
## use the Teredo origin indication encapsulation method.
## See :rfc:`4380` for more information about the Teredo protocol.
##
## outer: The Teredo tunnel connection.
##
## inner: The Teredo-encapsulated IPv6 packet header and transport header.
##
## .. bro:see:: teredo_packet teredo_authentication teredo_bubble
##
## .. note:: Since this event may be raised on a per-packet basis, handling
##    it may become particularly expensive for real-time analysis.
global teredo_origin_indication: event(outer: connection , inner: teredo_hdr );


## Generated for Teredo bubble packets.  That is, IPv6 packets encapsulated
## in a Teredo tunnel that have a Next Header value of :bro:id:`IPPROTO_NONE`.
## See :rfc:`4380` for more information about the Teredo protocol.
##
## outer: The Teredo tunnel connection.
##
## inner: The Teredo-encapsulated IPv6 packet header and transport header.
##
## .. bro:see:: teredo_packet teredo_authentication teredo_origin_indication
##
## .. note:: Since this event may be raised on a per-packet basis, handling
##    it may become particularly expensive for real-time analysis.
global teredo_bubble: event(outer: connection , inner: teredo_hdr );


} # end of export section
module GLOBAL;
