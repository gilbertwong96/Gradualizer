-module(undefined_errors).
-export([remote_type/0,
         remote_call/0,
         remote_record/0,
         normalize_remote_type/0,
         not_exported/0]).

-spec remote_type() -> undefined_errors_helper:j().
remote_type() -> ok.

-spec remote_call() -> ok.
remote_call() -> undefined_errors_helper:undefined_call().

-record(defined_record, {a, b, c}).
-spec remote_record() -> #defined_record{}.
remote_record() -> undefined_errors_helper:und_rec().

-spec normalize_remote_type() -> ok.
normalize_remote_type() -> undefined_errors_helper:und_ty().

-spec not_exported() -> undefined_errors_helper:not_exported_type().
not_exported() -> undefined_errors_helper:not_exp_ty().
