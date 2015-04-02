src = "./src"
dist = "./dist"

module.exports = 
  stylus:
    base64:
      maxWeight: 1024
    minify:
      compatibility: "ie9"
    resultName: "all.css"
    src: "#{src}/styl/main.styl"
    dest: "#{dist}/css"

  browserSync: 
    server:
      baseDir: dist
    port: 1337
    open: false

  clean:
    dest: dist

  fonts:
    cssDest: "#{dist}/css"
    fontsDest: "#{dist}/fonts"
    src: "#{src}/fonts"

  tiny: 
    src: "#{src}/toTiny"
    dest: "#{src}/images"
    apikey: "CrKRqfc7Q8-r-MpAro6PhQNoukdI9wh1"

  images:
    src: "#{src}/images/**/*"
    dest: "#{dist}/images"

  sftp:
    host: "fugr.ru"
    user: "fmake.ru"
    pass: ""
    remotePath: "/var/www/vhosts/fmake.ru/danil.fmake.ru/"

  jade:
    src: "#{src}/jade"
    dest: dist

  coffee:
    src: "#{src}/coffee/main.coffee"
    destName: "all.js"
    dest: "#{dist}/js"

  watch:
    src: src