%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosTransactions_RecoveryCoordinator
%% Source: /net/isildur/ldisk/daily_build/r15b01_prebuild_opu_o.2012-04-01_20/otp_src_R15B01/lib/cosTransactions/src/CosTransactions.idl
%% IC vsn: 4.2.30
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosTransactions_RecoveryCoordinator').
-ic_compiled("4_2_30").


%% Interface functions
-export([replay_completion/2, replay_completion/3]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: replay_completion
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::NotPrepared
%%
replay_completion(OE_THIS, R) ->
    corba:call(OE_THIS, replay_completion, [R], ?MODULE).

replay_completion(OE_THIS, OE_Options, R) ->
    corba:call(OE_THIS, replay_completion, [R], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosTransactions/RecoveryCoordinator:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(replay_completion) -> 
	{{tk_enum,"IDL:omg.org/CosTransactions/Status:1.0","Status",
                  ["StatusActive","StatusMarkedRollback","StatusPrepared",
                   "StatusCommitted","StatusRolledBack","StatusUnknown",
                   "StatusNoTransaction","StatusPreparing","StatusCommitting",
                   "StatusRollingBack"]},
         [{tk_objref,"IDL:omg.org/CosTransactions/Resource:1.0","Resource"}],
         []};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"replay_completion", oe_tc(replay_completion)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosTransactions/RecoveryCoordinator:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/RecoveryCoordinator:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/RecoveryCoordinator:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/RecoveryCoordinator:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/RecoveryCoordinator:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/RecoveryCoordinator:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/RecoveryCoordinator:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('ETraP_Server_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('ETraP_Server_impl', Reason, State).


%%%% Operation: replay_completion
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::NotPrepared
%%
handle_call({OE_THIS, OE_Context, replay_completion, [R]}, _, OE_State) ->
  corba:handle_call('ETraP_Server_impl', replay_completion, [R], OE_State, OE_Context, OE_THIS, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(_, State) ->
    {noreply, State}.


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('ETraP_Server_impl', OldVsn, State, Extra).

