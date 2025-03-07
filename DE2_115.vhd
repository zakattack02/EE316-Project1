                                                                                                                                                                                                                                                   LIBRARY ieee;
   USE ieee.std_logic_1164.all;

ENTITY DE2_115 IS
   PORT (
 -- 			Clock Input	 	     
      CLOCK_50    : IN STD_LOGIC;							-- On Board 50 MHz
      CLOCK2_50   : IN STD_LOGIC;  							-- On Board 50 MHz
      CLOCK3_50   : IN STD_LOGIC;  							-- On Board 50 MHz	  
      EXT_CLOCK   : IN STD_LOGIC;							-- External Clock
-- 			Push Button		      
      KEY         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);		-- Pushbutton[3:0]
-- 			DPDT Switch		      
      SW          : IN STD_LOGIC_VECTOR(17 DOWNTO 0);		-- Toggle Switch[17:0]
-- 			7-SEG Dispaly	      
      HEX0        : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);		-- Seven Segment Digit 0
      HEX1        : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);		-- Seven Segment Digit 1
      HEX2        : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);		-- Seven Segment Digit 2
      HEX3        : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);		-- Seven Segment Digit 3
      HEX4        : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);		-- Seven Segment Digit 4
      HEX5        : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);		-- Seven Segment Digit 5
      HEX6        : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);		-- Seven Segment Digit 6
      HEX7        : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);		-- Seven Segment Digit 7
-- 			LED		      
      LEDG        : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);		-- LED Green[8:0]
      LEDR        : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);		-- LED Red[17:0]
-- 			UART
      UART_CTS    : OUT STD_LOGIC;							-- UART Transmitter
      UART_RTS    : IN STD_LOGIC;							-- UART Receiver	      
      UART_TXD    : OUT STD_LOGIC;							-- UART Transmitter
      UART_RXD    : IN STD_LOGIC;							-- UART Receiver
-- 			IRDA	      
--      IRDA_TXD    : OUT STD_LOGIC;						-- IRDA Transmitter
--      IRDA_RXD    : IN STD_LOGIC;							-- IRDA Receiver
-- 			SDRAM Interface		      
      DRAM_DQ     : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);	-- SDRAM Data bus 32 Bits
      DRAM_ADDR   : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);		-- SDRAM Address bus 13 Bits
	  DRAM_DQM    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);	    -- SDRAM DQM Mask
      DRAM_WE_N   : OUT STD_LOGIC;							-- SDRAM Write Enable
      DRAM_CAS_N  : OUT STD_LOGIC;							-- SDRAM Column Address Strobe
      DRAM_RAS_N  : OUT STD_LOGIC;							-- SDRAM Row Address Strobe
      DRAM_CS_N   : OUT STD_LOGIC;							-- SDRAM Chip Select
      DRAM_BA     : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);		-- SDRAM Bank Addresses
      DRAM_CLK    : OUT STD_LOGIC;							-- SDRAM Clock
      DRAM_CKE    : OUT STD_LOGIC;							-- SDRAM Clock Enable
-- 			Flash Interface		      
      FL_DQ       : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);		-- FLASH Data bus 8 Bits
      FL_ADDR     : OUT STD_LOGIC_VECTOR(22 DOWNTO 0);		-- FLASH Address bus 23 Bits
      FL_WE_N     : OUT STD_LOGIC;							-- FLASH Write Enable
      FL_RST_N    : OUT STD_LOGIC;							-- FLASH Reset
      FL_OE_N     : OUT STD_LOGIC;							-- FLASH Output Enable
      FL_CE_N     : OUT STD_LOGIC;							-- FLASH Chip Enable
      FL_FY       : IN STD_LOGIC;							-- FLASH Output Enable
      FL_WP_N     : OUT STD_LOGIC;							-- FLASH Chip Enable	  	  
-- 			SRAM Interface		      
      SRAM_DQ     : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);	-- SRAM Data bus 16 Bits
      SRAM_ADDR   : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);		-- SRAM Address bus 18 Bits
      SRAM_UB_N   : OUT STD_LOGIC ;							-- SRAM High-byte Data Mask
      SRAM_LB_N   : OUT STD_LOGIC ;							-- SRAM Low-byte Data Mask
      SRAM_WE_N   : OUT STD_LOGIC;							-- SRAM Write Enable
      SRAM_CE_N   : OUT STD_LOGIC ;							-- SRAM Chip Enable
      SRAM_OE_N   : OUT STD_LOGIC;							-- SRAM Output Enable
-- 			ISP1362 Interface	      
      OTG_DATA    : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);	-- ISP1362 Data bus 16 Bits
      OTG_ADDR    : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);		-- ISP1362 Address 2 Bits
      OTG_CS_N    : OUT STD_LOGIC;							-- ISP1362 Chip Select
      OTG_RD_N    : OUT STD_LOGIC;							-- ISP1362 Read
      OTG_WR_N    : OUT STD_LOGIC;							-- ISP1362 Write
      OTG_RST_N   : OUT STD_LOGIC;							-- ISP1362 Reset
      OTG_FSPEED  : INOUT STD_LOGIC;						-- USB Full Speed,	0 = Enable, Z = Disable
      OTG_LSPEED  : INOUT STD_LOGIC;						-- USB Low Speed, 	0 = Enable, Z = Disable
      OTG_INT     : IN STD_LOGIC_VECTOR(1 DOWNTO 0);		-- ISP1362 Interrupts 
      OTG_DREQ    : IN STD_LOGIC_VECTOR(1 DOWNTO 0);		-- ISP1362 DMA Request 0
      OTG_DACK_N  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);		-- ISP1362 DMA Acknowledge 0
-- 			LCD Module 16X2		            
      LCD_ON      : OUT STD_LOGIC;							-- LCD Power ON/OFF
      LCD_BLON    : OUT STD_LOGIC;							-- LCD Back Light ON/OFF
      LCD_RW      : OUT STD_LOGIC;							-- LCD Read/Write Select, 0 = Write, 1 = Read
      LCD_EN      : OUT STD_LOGIC;							-- LCD Enable
      LCD_RS      : OUT STD_LOGIC;							-- LCD Command/Data Select, 0 = Command, 1 = Data
      LCD_DATA    : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);		-- LCD Data bus 8 bits
-- 			SD_Card Interface	
      SD_DAT      : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);		-- SD Card Data
      SD_WP_N     : IN STD_LOGIC;							-- SD Card WP_N
      SD_CMD      : INOUT STD_LOGIC;						-- SD Card Command Signal
      SD_CLK      : INOUT STD_LOGIC;						-- SD Card Clock    
-- 			I2C		      
      I2C_SDAT     : INOUT STD_LOGIC;						-- I2C Data
      I2C_SCLK     : OUT STD_LOGIC;							-- I2C Clock
-- 			PS2		      
      PS2_DAT      : INOUT STD_LOGIC;						-- PS2 Data
      PS2_CLK      : INOUT STD_LOGIC;						-- PS2 Clock
      PS2_DAT2     : INOUT STD_LOGIC;						-- PS2 Data2
      PS2_CLK2     : INOUT STD_LOGIC;						-- PS2 Clock2	  
-- 			VGA		      
      VGA_CLK      : OUT STD_LOGIC;							-- VGA Clock
      VGA_HS       : OUT STD_LOGIC;							-- VGA H_SYNC
      VGA_VS       : OUT STD_LOGIC;							-- VGA V_SYNC_N
      VGA_BLANK_N  : OUT STD_LOGIC;							-- VGA BLANK_N
      VGA_SYNC_N   : OUT STD_LOGIC;							-- VGA SYNC
      VGA_R        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);	    -- VGA Red[7:0]
      VGA_G        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);	    -- VGA Green[7:0]
      VGA_B        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);	    -- VGA Blue[7:0]
-- 			Ethernet Interface	      
      ENET_DATA    : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);	-- DM9000A DATA bus 16Bits
      ENET_CMD     : OUT STD_LOGIC;							-- DM9000A Command/Data Select, 0 = Command, 1 = Data
      ENET_CS_N    : OUT STD_LOGIC;							-- DM9000A Chip Select
      ENET_WR_N    : OUT STD_LOGIC;							-- DM9000A Write
      ENET_RD_N    : OUT STD_LOGIC;							-- DM9000A Read
      ENET_RST_N   : OUT STD_LOGIC;							-- DM9000A Reset
      ENET_INT     : IN STD_LOGIC;							-- DM9000A Interrupt
      ENET_CLK     : OUT STD_LOGIC;							-- DM9000A Clock 25 MHz
-- 			Audio CODEC		      
      AUD_ADCLRCK  : INOUT STD_LOGIC;						-- Audio CODEC ADC LR Clock
      AUD_ADCDAT   : IN STD_LOGIC;							-- Audio CODEC ADC Data
      AUD_DACLRCK  : INOUT STD_LOGIC;						-- Audio CODEC DAC LR Clock
      AUD_DACDAT   : OUT STD_LOGIC;							-- Audio CODEC DAC Data
      AUD_BCLK     : INOUT STD_LOGIC;						-- Audio CODEC Bit-Stream Clock
      AUD_XCK      : OUT STD_LOGIC;							-- Audio CODEC Chip Clock
-- 			TV Decoder	
      TD_CLK27     : IN STD_LOGIC;							-- On Board 27 MHz	      
      TD_DATA      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);		-- TV Decoder Data bus 8 bits
      TD_HS        : IN STD_LOGIC;							-- TV Decoder H_SYNC
      TD_VS        : IN STD_LOGIC;							-- TV Decoder V_SYNC
      TD_RESET_N   : OUT STD_LOGIC;							-- TV Decoder Reset_N
--  Mezzanine Card (HSMC) connector (not implemented)	  
-- 			GPIO	      
      GPIO         : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0)	-- GPIO Connection                                                                                                
   );
END DE2_115;

ARCHITECTURE structural OF DE2_115 IS

-- TOP LEVEL COMPONENT

component top_level is
		port (
		iCLK 					 : in std_logic; 
		reset_in 			 : in std_logic; 

		address_o		    : out std_logic_vector(19 downto 0);
		we, oe, ub, lb, ce : out std_logic;			
		IO						 : inout std_logic_vector(15 downto 0);
		data_out				 : out std_LOGIC_VECTOR(27 downto 0);
		address_out			 : out std_LOGIC_VECTOR(13 downto 0);
		keypad_data_test	 : in std_logic;
			   row  : in std_logic_vector(4 DOWNTO 0); 
				led  : out std_LOGIC;
	   col : out std_logic_vector(3 downto 0)
		);
end component top_level;

BEGIN

-- INSTANTIATION OF THE TOP LEVEL COMPONENT

Inst_top_level: top_level 
		port map (
		iCLK	=> CLOCK_50, 
		reset_in		=> KEY(0), 	
		address_o	=> SRAM_ADDR(19 DOWNTO 0),
		we			=> SRAM_WE_N,
		oe       => SRAM_OE_N,
		ub		   => SRAM_UB_N,
		lb			=> SRAM_LB_N,
		ce			=> SRAM_CE_N,
		IO       => SRAM_DQ(15 DOWNTO 0),
		data_out(27 downto 21) => HEX3,
		data_out(20 downto 14) => HEX2,
		data_out(13 downto 7) => HEX1,
		data_out(6 downto 0) => HEX0,
		row  				=> GPIO(4 downto 0),
		address_out(13 downto 7)  => HEX5,
		address_out(6 downto 0)   => HEX4,
		col 				=> GPIO(35 downto 32),
		keypad_data_test		=>SW(5),
		led						=> LEDG(0)
		);

END structural;
