# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/file_analysis/analyzer/entropy/events.bif (plugin mode).

## This event is generated each time file analysis performs
## entropy testing on a file.
##
## f: The file.
##
## ent: The results of the entropy testing.
##
export {
global file_entropy: event(f: fa_file , ent: entropy_test_result );
} # end of export section
module GLOBAL;
