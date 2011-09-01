#!/bin/sh

. ../../../prepare.inc.sh
. ../../../toolbox.inc.sh


# ---- do the actual testing ----

result=PASS
echo "++++ BEGINNING TEST" >$OUTPUTFILE

# check that no arguments fails correctly
marker "NO ARGS"
expect_args_error keyctl unlink

# check that one argument fails correctly
marker "ONE ARGS"
expect_args_error keyctl unlink 0

# check that three arguments fails correctly
marker "THREE ARGS"
expect_args_error keyctl unlink 0 0 0

echo "++++ FINISHED TEST: $result" >>$OUTPUTFILE

# --- then report the results in the database ---
toolbox_report_result $TEST $result
