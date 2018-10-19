# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/analyzer/protocol/smb/smb1_com_tree_connect_andx.bif (plugin mode).

## Generated for :abbr:`SMB (Server Message Block)`/:abbr:`CIFS (Common Internet File System)`
## version 1 requests of type *tree connect andx*. This is sent by the client to establish a
## connection to a server share.
##
## For more information, see MS-CIFS:2.2.4.55
##
## c: The connection.
##
## hdr: The parsed header of the :abbr:`SMB (Server Message Block)` version 1 message.
##
## path: The ``path`` attribute specified in the message.
##
## service: The ``service`` attribute specified in the message.
##
## .. bro:see:: smb1_message smb1_tree_connect_andx_response
export {
global smb1_tree_connect_andx_request: event(c: connection , hdr: SMB1::Header , path: string , service: string );


## Generated for :abbr:`SMB (Server Message Block)`/:abbr:`CIFS (Common Internet File System)`
## version 1 responses of type *tree connect andx*. This is the server reply to the *tree connect andx*
## request.
##
## For more information, see MS-CIFS:2.2.4.55
##
## c: The connection.
##
## hdr: The parsed header of the :abbr:`SMB (Server Message Block)` version 1 message.
##
## service: The ``service`` attribute specified in the message.
##
## native_file_system: The file system of the remote server as indicate by the server.
##
## .. bro:see:: smb1_message smb1_tree_connect_andx_request
global smb1_tree_connect_andx_response: event(c: connection , hdr: SMB1::Header , service: string , native_file_system: string );


} # end of export section
module GLOBAL;
