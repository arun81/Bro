# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/file_analysis/analyzer/hash/events.bif (plugin mode).

## This event is generated each time file analysis generates a digest of the
## file contents.
##
## f: The file.
##
## kind: The type of digest algorithm.
##
## hash: The result of the hashing.
##
## .. bro:see:: Files::add_analyzer Files::ANALYZER_MD5
##    Files::ANALYZER_SHA1 Files::ANALYZER_SHA256
export {
global file_hash: event(f: fa_file , kind: string , hash: string );

} # end of export section
module GLOBAL;
