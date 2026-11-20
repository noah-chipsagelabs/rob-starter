// In-order response buffer. Your interviewer will describe the behaviour.
module rob #(
  parameter int N  = 8,              // max requests in flight
  parameter int AW = 32,             // address width
  parameter int DW = 32,             // data width
  parameter int TW = $clog2(N)       // tag width
) (
  input  logic          clk,
  input  logic          rst,         // synchronous, active high

  // Upstream requests
  input  logic          req_valid,
  output logic          req_ready,
  input  logic [AW-1:0] req_addr,

  // Requests to memory
  output logic          mem_req_valid,
  input  logic          mem_req_ready,
  output logic [AW-1:0] mem_req_addr,
  output logic [TW-1:0] mem_req_tag,

  // Responses from memory: no ready signal, you must accept them
  input  logic          mem_rsp_valid,
  input  logic [TW-1:0] mem_rsp_tag,
  input  logic [DW-1:0] mem_rsp_data,

  // Downstream responses, in request order
  output logic          out_valid,
  input  logic          out_ready,
  output logic [DW-1:0] out_data
);

  // TODO

endmodule
