
-define(DEBUGPRINT(A), error_logger:info_report("~~o)> " ++ A)).
-define(BUILTIN_CONTROLLER_FILTERS, [boss_lang_filter, boss_cache_page_filter, boss_cache_vars_filter]).
-define(DEFAULT_WEB_SERVER, cowboy).
-define(PRINT(N,V),
	lager:notice(" ~s ~p", [ N,V])).
-include_lib("eunit/include/eunit.hrl").
-include_lib("boss_app_info.hrl").

-record(state, {
        applications	= []	::[ #boss_app_info{}],
        service_sup_pid		::pid(),
        http_pid		::pid(),
        smtp_pid		::pid(),
        is_master_node	= false ::boolean()
    }).


-ifdef(TEST).
-compile(export_all).
-endif.
