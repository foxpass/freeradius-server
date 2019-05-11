TARGET := libfreeradius-eap-aka-sim.a


SOURCES	:= \
	base.c \
	state_machine.c \
	crypto.c \
	decode.c \
	encode.c \
	fips186prf.c \
	id.c \
	vector.c \
	xlat.c

SRC_INCDIRS	:= . ${top_srcdir}/src/modules/rlm_eap/lib/base ${top_srcdir}/src/modules/rlm_eap/
TGT_PREREQS	:= $(LIBFREERADIUS_SERVER) libfreeradius-eap.a libfreeradius-util.a libfreeradius-sim.a
