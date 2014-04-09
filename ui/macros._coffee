
# A macro to render an angular function as minify-safe.
# Use:
#   ngFn ($scope, coolService) ->
#     ...
#
# Result:
#   ['$scope', 'coolService', function($scope, coolService) {
#     ...
#   }]
#
# There's probably a better implementation for this, but blackcoffee is somewhat
# undocumented ;)
macro ngFn (fn) ->
  if fn.params.length > 0
    v = ("'#{p.name.value}'" for p in fn.params)
    macro.jsToNode "[#{v.join(', ')}, #{macro.nodeToVal fn}]"
  else
    fn

