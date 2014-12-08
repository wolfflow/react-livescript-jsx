module.exports =
  app:
    files: [
      expand: true
      cwd: './tmp'
      src: ['**/*.jsx']
      dest: 'build'
      ext: '.js'
    ]
