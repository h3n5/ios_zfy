// 得到手机屏幕的宽度
let htmlWidth = document.documentElement.clientWidth || document.body.clientWidth
// 得到html的Dom元素
let htmlDom = document.getElementsByTagName('html')[0]
// 设置根元素字体大小 为了适配控制字体大小
let standard = 375
let realWidth = standard + (htmlWidth - standard) / 3
let fontSize = realWidth / 30
htmlDom.style.fontSize = fontSize + 'px'
