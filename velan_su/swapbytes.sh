#! bin/sh
#-------------------------------------------------------------------------------
# SUSWAPBYTES - SWAP the BYTES in SU data to convert data from big endian
#               to little endian byte order, and vice versa		
#									
# suswapbytes < stdin [optional parameter] > sdtout			
#									
# 	format=0		foreign to native			
# 				=1 native to foreign			
# 	ns=from header		if ns not set in header, must be set by hand
# Notes:								
#  The 'native'	endian is the endian (byte order) of the machine you are
#  running this program on. The 'foreign' endian is the opposite byte order.
#   									
# Examples of big endian machines are: IBM RS6000, SUN, NeXT		
# Examples of little endian machines are: PCs, DEC			
#									
# Caveat: this code has not been tested on DEC		
#-------------------------------------------------------------------------------
indata=seis_cdp_sort_noise.su
outdata=seis_cdp2.su
ns=1200

suswapbytes < $indata > $outdata ns=$ns
mv $outdata $indata

surange < $indata

exit 0


