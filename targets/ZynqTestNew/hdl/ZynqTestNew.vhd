-------------------------------------------------------------------------------
-- ZynqTestNew.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use work.ArmRceG3Pkg.all;

entity ZynqTestNew is
   port (
      led        : out   std_logic_vector(1 downto 0);
      i2cSda     : inout std_logic;
      i2cScl     : inout std_logic
   );
end ZynqTestNew;

architecture STRUCTURE of ZynqTestNew is

   -- Local Signals

begin

   -- Core
   U_ArmRceG3Top: entity work.ArmRceG3Top
      generic map (
         DEBUG_EN_G   => true,
         AXI_CLKDIV_G => 10.0
      ) port map (
         i2cSda             => i2cSda,
         i2cScl             => i2cScl,
         axiClk             => open,
         axiClkRst          => open,
         sysClk125          => open,
         sysClk125Rst       => open,
         sysClk200          => open,
         sysClk200Rst       => open,
         localBusMaster     => open,
         localBusSlave      => (others=>LocalBusSlaveInit),
         ethFromArm         => open,
         ethToArm           => (others=>EthToArmInit)
      );

   led <= "00";

end architecture STRUCTURE;
