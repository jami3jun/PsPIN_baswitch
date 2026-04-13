#ModelSim
#export PSPIN_SIM="modelsim_model"

#Verilator
export PSPIN_SIM="verilator_model"

# Update these!
#
# Point this at the *bin/* directory of a RISC-V GCC toolchain.
# Example (once installed): /homes/jami3jun/pspin_dev/tools/riscv-gcc/bin
export RISCV_GCC="/homes/jami3jun/pspin_dev/tools/riscv-gcc/bin"

# PsPIN repo paths
export PSPIN_HW="/homes/jami3jun/pspin_dev/pspin/hw"
export PSPIN_RT="/homes/jami3jun/pspin_dev/pspin/sw"

# Verilator install prefix (we built v4.108 here)
export VERILATOR_HOME="/homes/jami3jun/pspin_dev/tools/verilator-4.108"
# Local build-time utilities (gengetopt, gperf, texinfo, ...)
export PSPIN_DEPS="/homes/jami3jun/pspin_dev/tools/deps"

export PATH="$RISCV_GCC:$VERILATOR_HOME/bin:$PSPIN_DEPS/bin:$PATH"

# Don't change
export TARGET_VSIM=${PSPIN_HW}/$PSPIN_SIM
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH:-}:/${PSPIN_HW}/verilator_model/lib/"
export TRACE_DIR="./"

