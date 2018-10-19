# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/analyzer/protocol/smb/smb1_com_negotiate.bif (plugin mode).

## Generated for :abbr:`SMB (Server Message Block)`/:abbr:`CIFS (Common Internet File System)`
## version 1 requests of type *negotiate*. This is sent by the client to initiate an SMB
## connection between the client and the server. A *negotiate* exchange MUST be completed
## before any other SMB messages are sent to the server.
##
## For more information, see MS-CIFS:2.2.4.52
##
## c: The connection.
##
## hdr: The parsed header of the :abbr:`SMB (Server Message Block)` version 1 message.
##
## dialects: The SMB dialects supported by the client.
##
## .. bro:see:: smb1_message smb1_negotiate_response
export {
global smb1_negotiate_request: event(c: connection , hdr: SMB1::Header , dialects: string_vec );


## Generated for :abbr:`SMB (Server Message Block)`/:abbr:`CIFS (Common Internet File System)`
## version 1 responses of type *negotiate*. This is the server response to the *negotiate*
## request.
##
## For more information, see MS-CIFS:2.2.4.52
##
## c: The connection.
##
## hdr: The parsed header of the :abbr:`SMB (Server Message Block)` version 1 message.
##
## response: A record structure containing more information from the response.
##
## .. bro:see:: smb1_message smb1_negotiate_request
global smb1_negotiate_response: event(c: connection , hdr: SMB1::Header , response: SMB1::NegotiateResponse );


#### Types








} # end of export section
module GLOBAL;
