module.exports = (grunt, options) ->
  server:
    options:
      port: grunt.option('port') or 8000
      keepalive: true
      middleware: (connect, options, middlewares) ->
        [
          connect.compress(
            filter: (req, res) ->
              /css|text|javascript/.test res.getHeader 'Content-Type'
          )
          connect.static 'build', redirect: true
        ]
