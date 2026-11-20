"""cocotb tests for rob."""
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


async def start(dut):
    """Start the clock, set every input to idle and apply reset."""
    cocotb.start_soon(Clock(dut.clk, 10, "ns").start())
    dut.rst.value = 1
    dut.req_valid.value = 0
    dut.req_addr.value = 0
    dut.mem_req_ready.value = 0
    dut.mem_rsp_valid.value = 0
    dut.mem_rsp_tag.value = 0
    dut.mem_rsp_data.value = 0
    dut.out_ready.value = 0
    await ClockCycles(dut.clk, 5)
    dut.rst.value = 0


@cocotb.test()
async def smoke(dut):
    await start(dut)
    await ClockCycles(dut.clk, 10)
    # TODO
