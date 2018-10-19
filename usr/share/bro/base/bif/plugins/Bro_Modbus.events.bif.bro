# This file was automatically generated by bifcl from /build/securityonion-bro-bmYGD9/securityonion-bro-2.5.5/src/analyzer/protocol/modbus/events.bif (plugin mode).

## Generated for any Modbus message regardless if the particular function
## is further supported or not.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## is_orig: True if the event is raised for the originator side.
export {
global modbus_message: event(c: connection , headers: ModbusHeaders , is_orig: bool );


## Generated for any Modbus exception message.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## code: The exception code.
global modbus_exception: event(c: connection , headers: ModbusHeaders , code: count );


## Generated for a Modbus read coils request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## start_address: The memory address of the first coil to be read.
##
## quantity: The number of coils to be read.
global modbus_read_coils_request: event(c: connection , headers: ModbusHeaders , start_address: count , quantity: count );


## Generated for a Modbus read coils response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## coils: The coil values returned from the device.
global modbus_read_coils_response: event(c: connection , headers: ModbusHeaders , coils: ModbusCoils );


## Generated for a Modbus read discrete inputs request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## start_address: The memory address of the first coil to be read.
##
## quantity: The number of coils to be read.
global modbus_read_discrete_inputs_request: event(c: connection , headers: ModbusHeaders , start_address: count , quantity: count );


## Generated for a Modbus read discrete inputs response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## coils: The coil values returned from the device.
global modbus_read_discrete_inputs_response: event(c: connection , headers: ModbusHeaders , coils: ModbusCoils );


## Generated for a Modbus read holding registers request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## start_address: The memory address of the first register to be read.
##
## quantity: The number of registers to be read.
global modbus_read_holding_registers_request: event(c: connection , headers: ModbusHeaders , start_address: count , quantity: count );


## Generated for a Modbus read holding registers response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## registers: The register values returned from the device.
global modbus_read_holding_registers_response: event(c: connection , headers: ModbusHeaders , registers: ModbusRegisters );


## Generated for a Modbus read input registers request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## start_address: The memory address of the first register to be read.
##
## quantity: The number of registers to be read.
global modbus_read_input_registers_request: event(c: connection , headers: ModbusHeaders , start_address: count , quantity: count );


## Generated for a Modbus read input registers response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## registers: The register values returned from the device.
global modbus_read_input_registers_response: event(c: connection , headers: ModbusHeaders , registers: ModbusRegisters );


## Generated for a Modbus write single coil request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## address: The memory address of the coil to be written.
##
## value: The value to be written to the coil.
global modbus_write_single_coil_request: event(c: connection , headers: ModbusHeaders , address: count , value: bool );


## Generated for a Modbus write single coil response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## address: The memory address of the coil that was written.
##
## value: The value that was written to the coil.
global modbus_write_single_coil_response: event(c: connection , headers: ModbusHeaders , address: count , value: bool );


## Generated for a Modbus write single register request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## address: The memory address of the register to be written.
##
## value: The value to be written to the register.
global modbus_write_single_register_request: event(c: connection , headers: ModbusHeaders , address: count , value: count );


## Generated for a Modbus write single register response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## address: The memory address of the register that was written.
##
## value: The value that was written to the register.
global modbus_write_single_register_response: event(c: connection , headers: ModbusHeaders , address: count , value: count );


## Generated for a Modbus write multiple coils request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## start_address: The memory address of the first coil to be written.
##
## coils: The values to be written to the coils.
global modbus_write_multiple_coils_request: event(c: connection , headers: ModbusHeaders , start_address: count , coils: ModbusCoils );


## Generated for a Modbus write multiple coils response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## start_address: The memory address of the first coil that was written.
##
## quantity: The quantity of coils that were written.
global modbus_write_multiple_coils_response: event(c: connection , headers: ModbusHeaders , start_address: count , quantity: count );


## Generated for a Modbus write multiple registers request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## start_address: The memory address of the first register to be written.
##
## registers: The values to be written to the registers.
global modbus_write_multiple_registers_request: event(c: connection , headers: ModbusHeaders , start_address: count , registers: ModbusRegisters );


## Generated for a Modbus write multiple registers response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## start_address: The memory address of the first register that was written.
##
## quantity: The quantity of registers that were written.
global modbus_write_multiple_registers_response: event(c: connection , headers: ModbusHeaders , start_address: count , quantity: count );


## Generated for a Modbus read file record request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## .. note: This event is incomplete.  The information from the data structure
##          is not yet passed through to the event.
global modbus_read_file_record_request: event(c: connection , headers: ModbusHeaders );


## Generated for a Modbus read file record response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## .. note: This event is incomplete.  The information from the data structure
##          is not yet passed through to the event.
global modbus_read_file_record_response: event(c: connection , headers: ModbusHeaders );


## Generated for a Modbus write file record request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## .. note: This event is incomplete.  The information from the data structure
##          is not yet passed through to the event.
global modbus_write_file_record_request: event(c: connection , headers: ModbusHeaders );


## Generated for a Modbus write file record response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## .. note: This event is incomplete.  The information from the data structure
##          is not yet passed through to the event.
global modbus_write_file_record_response: event(c: connection , headers: ModbusHeaders );


## Generated for a Modbus mask write register request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## address: The memory address of the register where the masks should be applied.
##
## and_mask: The value of the logical AND mask to apply to the register.
##
## or_mask: The value of the logical OR mask to apply to the register.
global modbus_mask_write_register_request: event(c: connection , headers: ModbusHeaders , address: count , and_mask: count , or_mask: count );


## Generated for a Modbus mask write register request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## address: The memory address of the register where the masks were applied.
##
## and_mask: The value of the logical AND mask applied register.
##
## or_mask: The value of the logical OR mask applied to the register.
global modbus_mask_write_register_response: event(c: connection , headers: ModbusHeaders , address: count , and_mask: count , or_mask: count );


## Generated for a Modbus read/write multiple registers request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## read_start_address: The memory address of the first register to be read.
##
## read_quantity: The number of registers to read.
##
## write_start_address: The memory address of the first register to be written.
##
## write_registers: The values to be written to the registers.
global modbus_read_write_multiple_registers_request: event(c: connection , headers: ModbusHeaders , read_start_address: count , read_quantity: count , write_start_address: count , write_registers: ModbusRegisters );


## Generated for a Modbus read/write multiple registers response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## written_registers: The register values read from the registers specified in
##                    the request.
global modbus_read_write_multiple_registers_response: event(c: connection , headers: ModbusHeaders , written_registers: ModbusRegisters );


## Generated for a Modbus read FIFO queue request.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## start_address: The address of the FIFO queue to read.
global modbus_read_fifo_queue_request: event(c: connection , headers: ModbusHeaders , start_address: count );


## Generated for a Modbus read FIFO queue response.
##
## c: The connection.
##
## headers: The headers for the modbus function.
##
## fifos: The register values read from the FIFO queue on the device.
global modbus_read_fifo_queue_response: event(c: connection , headers: ModbusHeaders , fifos: ModbusRegisters );


} # end of export section
module GLOBAL;
