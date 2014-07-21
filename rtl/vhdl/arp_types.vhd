--
--      Package File Template
--
--      Purpose: This package defines supplemental types, subtypes, 
--               constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--
-- Revision 0.02 - Added type definitions (store and network) for arpv2

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package arp_types is


  -- arp lookup types
  
  type arp_req_req_type is
  record
    lookup_req : STD_LOGIC;  -- set high when wanting mac adr for the requested IP
    ip         : STD_LOGIC_VECTOR (31 downto 0);
  end record;

  type arp_req_rslt_type is
  record
    got_mac : STD_LOGIC;                -- indicates that we got the mac
    mac     : STD_LOGIC_VECTOR (47 downto 0);
    got_err : STD_LOGIC;  -- indicates that we got an error (prob a timeout)
  end record;

  type arp_entry_t is record
    ip  : STD_LOGIC_VECTOR (31 downto 0);
    mac : STD_LOGIC_VECTOR (47 downto 0);
  end record;

  type arp_control_type is
  record
    clear_cache : STD_LOGIC;
  end record;

  -- arp store types

  type arp_store_rslt_t is (IDLE, BUSY, SEARCHING, FOUND, NOT_FOUND);

  type arp_store_rdrequest_t is
  record
    req : STD_LOGIC;                      -- request to lookup
    ip  : STD_LOGIC_VECTOR(31 downto 0);  -- contains ip to lookup
  end record;

  type arp_store_wrrequest_t is
  record
    req   : STD_LOGIC;                  -- request to store
    entry : arp_entry_t;                -- ip,mac to store
  end record;

  type arp_store_result_t is
  record
    status : arp_store_rslt_t;          -- status of the request
    entry  : arp_entry_t;               -- contains ip,mac if found
  end record;

  -- arp network types

  type arp_nwk_rslt_t is (IDLE, REQUESTING, RECEIVED, error);

  type arp_nwk_request_t is
  record
    req : STD_LOGIC;                      -- request to resolve IP addr
    ip  : STD_LOGIC_VECTOR(31 downto 0);  -- IP to request
  end record;

  type arp_nwk_result_t is
  record
    status : arp_nwk_rslt_t;            -- status of request
    entry  : arp_entry_t;               -- the result
  end record;

  function empty_arp_entry return arp_entry_t;
  
end arp_types;

package body arp_types is

  function empty_arp_entry return arp_entry_t is
    variable ent : arp_entry_t;
  begin
    ent.ip  := (others => '0');
    ent.mac := (others => '0');
    return ent;
  end empty_arp_entry;


end arp_types;
