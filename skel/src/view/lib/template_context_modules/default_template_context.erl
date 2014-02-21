-module(default_template_context).
-export([add_session_data/1, add_request/1, add_base_url/5, add_before/1]).
-include_lib("ChicagoBoss/include/boss_app_info.hrl").

add_session_data(RequestContext) ->
    SessionID = proplists:get_value(session_id, RequestContext),
    {'_session', boss_session:get_session_data(SessionID)}.

add_request(RequestContext) ->
    {'_req', proplists:get_value(request, RequestContext)}.

add_base_url(RequestContext, Lang, AppInfo, Variables, BeforeVars) ->
    {'_base_url', AppInfo#boss_app_info.base_url}.

add_before(RequestContext) ->
    case proplists:get_value('_before', RequestContext) of
        undefined ->
            none;
        AuthInfo ->
            {'_before', AuthInfo}
    end.
