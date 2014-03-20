-------------------------------------------------------------------------------
-- Title         : Version Constant File
-- Project       : COB Zynq DTM
-------------------------------------------------------------------------------
-- File          : Version.vhd
-- Author        : Ryan Herbst, rherbst@slac.stanford.edu
-- Created       : 05/07/2013
-------------------------------------------------------------------------------
-- Description:
-- Version Constant Module
-------------------------------------------------------------------------------
-- Copyright (c) 2012 by SLAC. All rights reserved.
-------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

package Version is

constant FPGA_VERSION_C : std_logic_vector(31 downto 0) := x"DA000214"; -- MAKE_VERSION

constant BUILD_STAMP_C : string := "Built Thu Mar 20 12:31:35 PDT 2014 by rherbst";

end Version;

-------------------------------------------------------------------------------
-- Revision History:
-- 06/26/2013 (0xDA000000): Initial Version
-- 07/08/2013 (0xDA000003): Ethernet fix.
-- 07/08/2013 (0xDA000004): New FIFOs
-- 10/22/2013 (0xDA000005): New structures
-- 10/23/2013 (0xDA000006): Fixes.
-- 10/26/2013 (0xDA000007): New build structure
-- 11/05/2013 (0xDA000009): Changed outbound free list FIFOs
-- 11/05/2013 (0xDA00000A): Added common DPM block
-- 11/18/2013 (0xDA000200): Vivado Build
-- 12/11/2013 (0xDA000201): Added timing
-- 12/11/2013 (0xDA000202): Version Change
-- 12/11/2013 (0xDA000203): Reset change
-- 12/16/2013 (0xDA000204): Added LEDs
-- 02/28/2014 (0xDA000205): new build system
-- 02/25/2014 (0xDC000211): Structure Change
-- 03/13/2014 (0xDC000212): Slow external AXI
-- 03/13/2014 (0xDC000213): Crossbar Fix
-- 03/13/2014 (0xDC000214): Osc. Pin Change
-------------------------------------------------------------------------------

