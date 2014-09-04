gulp = require 'gulp'
sass = require 'gulp-sass'
coffee = require('gulp-coffee')


connect = require 'connect'
serveStatic = require('serve-static')
livereload = require('gulp-livereload')

gulp.task 'sass', ->
  gulp.src('sass/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('css/'))

gulp.task 'server', ->
  server = connect()
  server.use(serveStatic('.')).listen(process.env.PORT||8080)

gulp.task 'coffee', ->
  gulp.src('./coffee/*.coffee')
  .pipe(coffee({bare: true}).on('error', console.log))
  .pipe(gulp.dest('./js/'))

gulp.task 'watch', ->
  gulp.watch('sass/*.scss', ['sass'])
  gulp.watch('coffee/*.coffee', ['coffee'])
  server = livereload()
  gulp.watch('*.html').on('change', (file)->
    server.changed(file.path))
  gulp.watch('css/*.css').on('change', (file)->
    server.changed(file.path))

gulp.task 'default', ['server','watch']
