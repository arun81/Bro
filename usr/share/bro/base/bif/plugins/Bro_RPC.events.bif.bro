# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/analyzer/protocol/rpc/events.bif (plugin mode).

## Generated for NFSv3 request/reply dialogues of type *null*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_not_implemented  nfs_proc_read nfs_proc_readdir nfs_proc_readlink
##    nfs_proc_remove nfs_proc_rmdir nfs_proc_write nfs_reply_status rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
export {
global nfs_proc_null: event(c: connection , info: NFS3::info_t );


## Generated for NFSv3 request/reply dialogues of type *getattr*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## fh: TODO.
##
## attrs: The attributes returned in the reply. The values may not be valid if
##       the request was unsuccessful.
##
## .. bro:see:: nfs_proc_create  nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_read nfs_proc_readdir
##    nfs_proc_readlink nfs_proc_remove nfs_proc_rmdir nfs_proc_write nfs_reply_status
##    rpc_call rpc_dialogue rpc_reply file_mode
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_getattr: event(c: connection , info: NFS3::info_t , fh: string , attrs: NFS3::fattr_t );


## Generated for NFSv3 request/reply dialogues of type *lookup*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## req:  The arguments passed in the request.
##
## rep: The response returned in the reply. The values may not be valid if the
##      request was unsuccessful.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr  nfs_proc_mkdir
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_read nfs_proc_readdir
##    nfs_proc_readlink nfs_proc_remove nfs_proc_rmdir nfs_proc_write nfs_reply_status
##    rpc_call rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_lookup: event(c: connection , info: NFS3::info_t , req: NFS3::diropargs_t , rep: NFS3::lookup_reply_t );


## Generated for NFSv3 request/reply dialogues of type *read*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## req:  The arguments passed in the request.
##
## rep: The response returned in the reply. The values may not be valid if the
##      request was unsuccessful.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_remove nfs_proc_rmdir
##    nfs_proc_write nfs_reply_status rpc_call rpc_dialogue rpc_reply
##    NFS3::return_data NFS3::return_data_first_only NFS3::return_data_max
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_read: event(c: connection , info: NFS3::info_t , req: NFS3::readargs_t , rep: NFS3::read_reply_t );


## Generated for NFSv3 request/reply dialogues of type *readlink*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## fh: The file handle passed in the request.
##
## rep: The response returned in the reply. The values may not be valid if the
##      request was unsuccessful.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_read nfs_proc_readdir
##    nfs_proc_remove nfs_proc_rmdir nfs_proc_write nfs_reply_status rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_readlink: event(c: connection , info: NFS3::info_t , fh: string , rep: NFS3::readlink_reply_t );


## Generated for NFSv3 request/reply dialogues of type *write*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## req: TODO.
##
## rep: The response returned in the reply. The values may not be valid if the
##      request was unsuccessful.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_read nfs_proc_readdir
##    nfs_proc_readlink nfs_proc_remove nfs_proc_rmdir  nfs_reply_status rpc_call
##    rpc_dialogue rpc_reply NFS3::return_data NFS3::return_data_first_only
##    NFS3::return_data_max
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_write: event(c: connection , info: NFS3::info_t , req: NFS3::writeargs_t , rep: NFS3::write_reply_t );


## Generated for NFSv3 request/reply dialogues of type *create*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## req: TODO.
##
## rep: The response returned in the reply. The values may not be valid if the
##      request was unsuccessful.
##
## .. bro:see::  nfs_proc_getattr nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_read nfs_proc_readdir
##    nfs_proc_readlink nfs_proc_remove nfs_proc_rmdir nfs_proc_write nfs_reply_status
##    rpc_call rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_create: event(c: connection , info: NFS3::info_t , req: NFS3::diropargs_t , rep: NFS3::newobj_reply_t );


## Generated for NFSv3 request/reply dialogues of type *mkdir*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## req: TODO.
##
## rep: The response returned in the reply. The values may not be valid if the
##      request was unsuccessful.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr nfs_proc_lookup
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_read nfs_proc_readdir
##    nfs_proc_readlink nfs_proc_remove nfs_proc_rmdir nfs_proc_write nfs_reply_status
##    rpc_call rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_mkdir: event(c: connection , info: NFS3::info_t , req: NFS3::diropargs_t , rep: NFS3::newobj_reply_t );


## Generated for NFSv3 request/reply dialogues of type *remove*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## req: TODO.
##
## rep: The response returned in the reply. The values may not be valid if the
##      request was unsuccessful.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_read nfs_proc_readdir
##    nfs_proc_readlink  nfs_proc_rmdir nfs_proc_write nfs_reply_status rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_remove: event(c: connection , info: NFS3::info_t , req: NFS3::diropargs_t , rep: NFS3::delobj_reply_t );


## Generated for NFSv3 request/reply dialogues of type *rmdir*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## req: TODO.
##
## rep: The response returned in the reply. The values may not be valid if the
##      request was unsuccessful.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_read nfs_proc_readdir
##    nfs_proc_readlink nfs_proc_remove  nfs_proc_write nfs_reply_status rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_rmdir: event(c: connection , info: NFS3::info_t , req: NFS3::diropargs_t , rep: NFS3::delobj_reply_t );


## Generated for NFSv3 request/reply dialogues of type *readdir*. The event is
## generated once we have either seen both the request and its corresponding
## reply, or an unanswered request has timed out.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## req: TODO.
##
## rep: The response returned in the reply. The values may not be valid if the
##      request was unsuccessful.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_read nfs_proc_readlink
##    nfs_proc_remove nfs_proc_rmdir nfs_proc_write nfs_reply_status rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_readdir: event(c: connection , info: NFS3::info_t , req: NFS3::readdirargs_t , rep: NFS3::readdir_reply_t );


## Generated for NFSv3 request/reply dialogues of a type that Bro's NFSv3
## analyzer does not implement.
##
## NFS is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Network_File_System_(protocol)>`__ for more
## information about the service.
##
## c: The RPC connection.
##
## info: Reports the status of the dialogue, along with some meta information.
##
## proc: The procedure called that Bro does not implement.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_null nfs_proc_read nfs_proc_readdir nfs_proc_readlink nfs_proc_remove
##    nfs_proc_rmdir nfs_proc_write nfs_reply_status rpc_call rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_proc_not_implemented: event(c: connection , info: NFS3::info_t , proc: NFS3::proc_t );


## Generated for each NFSv3 reply message received, reporting just the
## status included.
##
## n: The connection.
##
## info: Reports the status included in the reply.
##
## .. bro:see:: nfs_proc_create nfs_proc_getattr nfs_proc_lookup nfs_proc_mkdir
##    nfs_proc_not_implemented nfs_proc_null nfs_proc_read nfs_proc_readdir
##    nfs_proc_readlink nfs_proc_remove nfs_proc_rmdir nfs_proc_write rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global nfs_reply_status: event(n: connection , info: NFS3::info_t );


## Generated for Portmapper requests of type *null*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## .. bro:see:: pm_request_set pm_request_unset pm_request_getport
##    pm_request_dump pm_request_callit pm_attempt_null pm_attempt_set
##    pm_attempt_unset pm_attempt_getport pm_attempt_dump
##    pm_attempt_callit pm_bad_port rpc_call rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_request_null: event(r: connection );


## Generated for Portmapper request/reply dialogues of type *set*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## m: The argument to the request.
##
## success: True if the request was successful, according to the corresponding
##          reply. If no reply was seen, this will be false once the request
##          times out.
##
## .. bro:see:: pm_request_null pm_request_unset pm_request_getport
##    pm_request_dump pm_request_callit pm_attempt_null pm_attempt_set
##    pm_attempt_unset pm_attempt_getport pm_attempt_dump
##    pm_attempt_callit pm_bad_port rpc_call rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_request_set: event(r: connection , m: pm_mapping , success: bool );


## Generated for Portmapper request/reply dialogues of type *unset*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## m: The argument to the request.
##
## success: True if the request was successful, according to the corresponding
##          reply. If no reply was seen, this will be false once the request
##          times out.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_getport
##    pm_request_dump pm_request_callit pm_attempt_null pm_attempt_set
##    pm_attempt_unset pm_attempt_getport pm_attempt_dump
##    pm_attempt_callit pm_bad_port rpc_call rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_request_unset: event(r: connection , m: pm_mapping , success: bool );


## Generated for Portmapper request/reply dialogues of type *getport*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## pr: The argument to the request.
##
## p: The port returned by the server.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_unset
##    pm_request_dump pm_request_callit pm_attempt_null pm_attempt_set
##    pm_attempt_unset pm_attempt_getport pm_attempt_dump
##    pm_attempt_callit pm_bad_port rpc_call rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_request_getport: event(r: connection , pr: pm_port_request , p: port );


## Generated for Portmapper request/reply dialogues of type *dump*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## m: The mappings returned by the server.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_unset
##    pm_request_getport pm_request_callit pm_attempt_null
##    pm_attempt_set pm_attempt_unset pm_attempt_getport
##    pm_attempt_dump pm_attempt_callit pm_bad_port rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_request_dump: event(r: connection , m: pm_mappings );


## Generated for Portmapper request/reply dialogues of type *callit*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## call: The argument to the request.
##
## p: The port value returned by the call.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_unset
##    pm_request_getport pm_request_dump pm_attempt_null
##    pm_attempt_set pm_attempt_unset pm_attempt_getport
##    pm_attempt_dump pm_attempt_callit pm_bad_port rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_request_callit: event(r: connection , call: pm_callit_request , p: port );


## Generated for failed Portmapper requests of type *null*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## status: The status of the reply, which should be one of the index values of
##         :bro:id:`RPC_status`.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_unset
##    pm_request_getport pm_request_dump pm_request_callit
##    pm_attempt_set pm_attempt_unset pm_attempt_getport
##    pm_attempt_dump pm_attempt_callit pm_bad_port rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_attempt_null: event(r: connection , status: rpc_status );


## Generated for failed Portmapper requests of type *set*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## status: The status of the reply, which should be one of the index values of
##         :bro:id:`RPC_status`.
##
## m: The argument to the original request.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_unset
##    pm_request_getport pm_request_dump pm_request_callit
##    pm_attempt_null pm_attempt_unset pm_attempt_getport
##    pm_attempt_dump pm_attempt_callit pm_bad_port rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_attempt_set: event(r: connection , status: rpc_status , m: pm_mapping );


## Generated for failed Portmapper requests of type *unset*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## status: The status of the reply, which should be one of the index values of
##         :bro:id:`RPC_status`.
##
## m: The argument to the original request.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_unset
##    pm_request_getport pm_request_dump pm_request_callit
##    pm_attempt_null pm_attempt_set pm_attempt_getport
##    pm_attempt_dump pm_attempt_callit pm_bad_port rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_attempt_unset: event(r: connection , status: rpc_status , m: pm_mapping );


## Generated for failed Portmapper requests of type *getport*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## status: The status of the reply, which should be one of the index values of
##         :bro:id:`RPC_status`.
##
## pr: The argument to the original request.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_unset
##    pm_request_getport pm_request_dump pm_request_callit
##    pm_attempt_null pm_attempt_set pm_attempt_unset pm_attempt_dump
##    pm_attempt_callit pm_bad_port rpc_call rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_attempt_getport: event(r: connection , status: rpc_status , pr: pm_port_request );


## Generated for failed Portmapper requests of type *dump*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## status: The status of the reply, which should be one of the index values of
##         :bro:id:`RPC_status`.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_unset
##    pm_request_getport pm_request_dump pm_request_callit
##    pm_attempt_null pm_attempt_set pm_attempt_unset
##    pm_attempt_getport pm_attempt_callit pm_bad_port rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_attempt_dump: event(r: connection , status: rpc_status );


## Generated for failed Portmapper requests of type *callit*.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## status: The status of the reply, which should be one of the index values of
##         :bro:id:`RPC_status`.
##
## call: The argument to the original request.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_unset
##    pm_request_getport pm_request_dump pm_request_callit
##    pm_attempt_null pm_attempt_set pm_attempt_unset
##    pm_attempt_getport pm_attempt_dump pm_bad_port rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_attempt_callit: event(r: connection , status: rpc_status , call: pm_callit_request );


## Generated for Portmapper requests or replies that include an invalid port
## number. Since ports are represented by unsigned 4-byte integers, they can
## stray outside the allowed range of 0--65535 by being >= 65536. If so, this
## event is generated.
##
## Portmapper is a service running on top of RPC. See `Wikipedia
## <http://en.wikipedia.org/wiki/Portmap>`__ for more information about the
## service.
##
## r: The RPC connection.
##
## bad_p: The invalid port value.
##
## .. bro:see:: pm_request_null pm_request_set pm_request_unset
##    pm_request_getport pm_request_dump pm_request_callit
##    pm_attempt_null pm_attempt_set pm_attempt_unset
##    pm_attempt_getport pm_attempt_dump pm_attempt_callit rpc_call
##    rpc_dialogue rpc_reply
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to
##    register a port for it or add a DPD payload signature.
global pm_bad_port: event(r: connection , bad_p: count );


## Generated for RPC request/reply *pairs*. The RPC analyzer associates request
## and reply by their transaction identifiers and raises this event once both
## have been seen. If there's not a reply, this event will still be generated
## eventually on timeout. In that case, *status* will be set to
## :bro:enum:`RPC_TIMEOUT`.
##
## See `Wikipedia <http://en.wikipedia.org/wiki/ONC_RPC>`__ for more information
## about the ONC RPC protocol.
##
## c: The connection.
##
## prog: The remote program to call.
##
## ver: The version of the remote program to call.
##
## proc: The procedure of the remote program to call.
##
## status: The status of the reply, which should be one of the index values of
##         :bro:id:`RPC_status`.
##
## start_time: The time when the *call* was seen.
##
## call_len: The size of the *call_body* PDU.
##
## reply_len: The size of the *reply_body* PDU.
##
## .. bro:see:: rpc_call rpc_reply dce_rpc_bind dce_rpc_message dce_rpc_request
##    dce_rpc_response rpc_timeout
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to add a
##    call to :bro:see:`Analyzer::register_for_ports` or a DPD payload
##    signature.
global rpc_dialogue: event(c: connection , prog: count , ver: count , proc: count , status: rpc_status , start_time: time , call_len: count , reply_len: count );


## Generated for RPC *call* messages.
##
## See `Wikipedia <http://en.wikipedia.org/wiki/ONC_RPC>`__ for more information
## about the ONC RPC protocol.
##
## c: The connection.
##
## xid: The transaction identifier allowing to match requests with replies.
##
## prog: The remote program to call.
##
## ver: The version of the remote program to call.
##
## proc: The procedure of the remote program to call.
##
## call_len: The size of the *call_body* PDU.
##
## .. bro:see::  rpc_dialogue rpc_reply dce_rpc_bind dce_rpc_message dce_rpc_request
##    dce_rpc_response rpc_timeout
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to add a
##    call to :bro:see:`Analyzer::register_for_ports` or a DPD payload
##    signature.
global rpc_call: event(c: connection , xid: count , prog: count , ver: count , proc: count , call_len: count );


## Generated for RPC *reply* messages.
##
## See `Wikipedia <http://en.wikipedia.org/wiki/ONC_RPC>`__ for more information
## about the ONC RPC protocol.
##
## c: The connection.
##
## xid: The transaction identifier allowing to match requests with replies.
##
## status: The status of the reply, which should be one of the index values of
##         :bro:id:`RPC_status`.
##
## reply_len: The size of the *reply_body* PDU.
##
## .. bro:see:: rpc_call rpc_dialogue  dce_rpc_bind dce_rpc_message dce_rpc_request
##    dce_rpc_response rpc_timeout
##
## .. todo:: Bro's current default configuration does not activate the protocol
##    analyzer that generates this event; the corresponding script has not yet
##    been ported to Bro 2.x. To still enable this event, one needs to add a
##    call to :bro:see:`Analyzer::register_for_ports` or a DPD payload
##    signature.
global rpc_reply: event(c: connection , xid: count , status: rpc_status , reply_len: count );

} # end of export section
module GLOBAL;
