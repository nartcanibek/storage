#!/bin/bash -f
xv_path="/opt/XilinxBroken/Vivado/2016.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
echo "xvlog -m64 --relax -prj aes_wrapper_vlog.prj"
ExecStep $xv_path/bin/xvlog -m64 --relax -prj aes_wrapper_vlog.prj 2>&1 | tee compile.log
echo "xvhdl -m64 --relax -prj aes_wrapper_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj aes_wrapper_vhdl.prj 2>&1 | tee -a compile.log
