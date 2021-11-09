class-pool .
*"* class pool for class ZCL_DS_DEMO01

*"* local type definitions
include ZCL_DS_DEMO01=================ccdef.

*"* class ZCL_DS_DEMO01 definition
*"* public declarations
  include ZCL_DS_DEMO01=================cu.
*"* protected declarations
  include ZCL_DS_DEMO01=================co.
*"* private declarations
  include ZCL_DS_DEMO01=================ci.
endclass. "ZCL_DS_DEMO01 definition

*"* macro definitions
include ZCL_DS_DEMO01=================ccmac.
*"* local class implementation
include ZCL_DS_DEMO01=================ccimp.

*"* test class
include ZCL_DS_DEMO01=================ccau.

class ZCL_DS_DEMO01 implementation.
*"* method's implementations
  include methods.
endclass. "ZCL_DS_DEMO01 implementation
