# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/analyzer/protocol/smb/smb1_com_echo.bif (plugin mode).

## Generated for :abbr:`SMB (Server Message Block)`/:abbr:`CIFS (Common Internet File System)`
## version 1 requests of type *echo*. This is sent by the client to test the transport layer
## connection with the server.
##
## For more information, see MS-CIFS:2.2.4.39
##
## c: The connection.
##
## hdr: The parsed header of the :abbr:`SMB (Server Message Block)` version 1 message.
##
## echo_count: The number of times the server should echo the data back.
## 
## data: The data for the server to echo.
##
## .. bro:see:: smb1_message smb1_echo_response
export {
global smb1_echo_request: event(c: connection , echo_count: count , data: string );


## Generated for :abbr:`SMB (Server Message Block)`/:abbr:`CIFS (Common Internet File System)`
## version 1 responses of type *echo*. This is the server response to the *echo* request.
##
## For more information, see MS-CIFS:2.2.4.39
##
## c: The connection.
##
## hdr: The parsed header of the :abbr:`SMB (Server Message Block)` version 1 message.
##
## seq_num: The sequence number of this echo reply.
## 
## data: The data echoed back from the client.
##
## .. bro:see:: smb1_message smb1_echo_request
global smb1_echo_response: event(c: connection , seq_num: count , data: string );
} # end of export section
module GLOBAL;
