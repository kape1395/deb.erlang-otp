%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosEventDomainAdmin_DiamondSeq
%% Source: /net/isildur/ldisk/daily_build/r15b01_prebuild_opu_o.2012-04-01_20/otp_src_R15B01/lib/cosEventDomain/src/CosEventDomainAdmin.idl
%% IC vsn: 4.2.30
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosEventDomainAdmin_DiamondSeq').
-ic_compiled("4_2_30").


-include("CosEventDomainAdmin.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_sequence,{tk_sequence,{tk_sequence,tk_long,0},0},0}.

%% returns id
id() -> "IDL:omg.org/CosEventDomainAdmin/DiamondSeq:1.0".

%% returns name
name() -> "CosEventDomainAdmin_DiamondSeq".



