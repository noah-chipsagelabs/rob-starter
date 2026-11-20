# rob

Your interviewer will describe the task.

## Layout

- `rtl/rob.sv`: the module, with its port list
- `test/test_rob.py`: cocotb tests, with a clock and reset helper
- `Makefile`: `make` runs the tests with Icarus; `make lint` runs Verilator lint

## Run

```
pip install -r requirements.txt
make
```
