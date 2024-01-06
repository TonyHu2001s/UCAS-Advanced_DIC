.PHONY:com sim clean

OUTPUT = sort_32_u8

VCS = vcs -full64 +v2k -timescale=1ns/1ns			\
			-debug_acc+all							\
			-sverilog								\
			-o ${OUTPUT}							\
			-l ../rpt/compile.log							\						
			+lint=PCWM							\						

SIM = ./${OUTPUT} -l ../rpt/run.log

com:
		${VCS} -f ../../src/file_list.f

sim:
		${SIM}
		dve -vpd *.vpd &

clean:
		rm -rf ./csrc *.daidr *.log simv* *.key DVE* *.vpd

all:	clean com sim
