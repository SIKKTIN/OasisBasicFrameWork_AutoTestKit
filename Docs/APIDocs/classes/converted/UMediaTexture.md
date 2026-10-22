# UMediaTexture

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMediaTexture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaTexture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaTexture](https://developer.gp.qq.com/api/#/searchContent/UMediaTexture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaTexture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaTexture)

类

全文搜索

Implements a texture asset for rendering video tracks from UMediaPlayer assets.

---


## 函数

- **GetAspectRatio**(Gets the current aspect ratio of the texture. return -Texture aspect ratio.)
- **GetHeight**(Gets the current height of the texture. return -Texture height (in pixels).)
- **GetWidth**(Gets the current width of the texture. return -Texture width (in pixels).)
- **ResetFirstFrame**(Reset The IsFirstFrameRender&IsFirstFrameNotify to false for iOS GetAspectRatio GetHeight GetWidth ResetFirstFrame)

## 属性

- **addressing** — mode to use for the X axis. The addressing mode to use for the Y axis. Whether to clear the texture when no media is being played (default = enabled). The color used to clear the texture if AutoClear is enabled (default = black). UMediaPlayer *MediaPlayer The media player asset associated with this