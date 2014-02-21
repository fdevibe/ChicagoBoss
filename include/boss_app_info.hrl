
-record(boss_app_info, {
        application		::atom(),
        base_url                ::string(),
        static_prefix           ::string(),
        doc_prefix              ::string(),
        domains                 ::all|[string()],
        init_data               ::[{atom(), any()}] ,
        router_sup_pid		::pid(),
        router_pid		::pid(),
        translator_sup_pid	::pid(),
        translator_pid		::pid(),
        model_modules = []      ::[atom()],
        view_modules = []       ::[atom()],
        controller_modules = [] ::[atom()]
    }).
