.PHONY:com sim clean

OUTPUT = add_tc_16_16

VCS = vcs -full64 +v2k -timescale=1ns/1ns			\
			-debug_acc+all							\
			-sverilog								\
			-o ${OUTPUT}							\
			-l ../rpt/compile.log							\						

SIM = ./${OUTPUT} -l ../rpt/run.log

com:
		${VCS} -f ../../src/file_list.f

sim:
		${SIM}
		dve -vpd vcdplus.vpd &

clean:
		rm -rf ./csrc *.daidr *.log simv* *.key DVE* *.vpd ${OUTPUT}
