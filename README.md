# runHDLsim Function Overview

The `runHDLsim` function is a MATLAB script designed to simulate HDL (Hardware Description Language) files. It supports both Verilog (`.v`) and VHDL (`.vhdl`) files. The function verifies the existence of necessary tools (i.e., `iverilog`, `ghdl`, and `gtkwave`) and runs the appropriate simulation.

## Prerequisites

Ensure that the following tools are installed on your system:
- `iverilog` (for Verilog simulation)
- `ghdl` (for VHDL simulation)
- `gtkwave` (for waveform viewing)

## Usage

```matlab
runHDLsim(module_path, testbench_path)
```

### Parameters
- `module_path`: Path to the HDL module file (either `.v` for Verilog or `.vhdl` for VHDL).
- `testbench_path`: Path to the testbench file corresponding to the HDL module.

### Example

```matlab
runHDLsim('path/to/module.v', 'path/to/testbench.v')
```

## Steps Performed by the Function

1. **File Verification**: Checks if the specified module and testbench files exist.
2. **Tool Check**: Verifies the installation of required tools (`iverilog` for Verilog, `ghdl` for VHDL, and `gtkwave` for waveform viewing).
3. **Simulation**:
   - **For Verilog**: Compiles the code using `iverilog`, runs the simulation with `vvp`, and launches `gtkwave` to view the waveform.
   - **For VHDL**: Analyzes and elaborates the design using `ghdl`, runs the simulation, and launches `gtkwave` to view the waveform.

## Notes

- Ensure that the paths provided to the function are correct and that the files exist.
- If any required tool is not installed, the function will output an error message along with a download link.

## Error Handling

The function includes error handling to:
- Notify if the specified files do not exist.
- Inform if any required tool is not installed and provide a download link.

## License

This script is distributed under the GNU General Public License. See the included LICENSE file for more details.

## More Information

For more information, refer to the respective tool documentation:
- [iverilog](https://bleyer.org/icarus/)
- [ghdl](https://github.com/ghdl/ghdl/)
- [gtkwave](https://gtkwave.sourceforge.net/)
``` 
