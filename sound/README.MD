### Sound Installation Guide

To integrate the sonic boom effect properly, follow these steps:

#### 1. Place the Sound File

- Copy `sonicboom.ogg` into `interact-sound/client/html/sound`.

#### 2. Update `fxmanifest.lua`

- Open `fxmanifest.lua` in the `interact-sound` directory.
- Add the following line to register the new sound file:

  ```lua
  files {
      'client/html/sound/sonicboom.ogg'
  }
  ```

### Finalizing Installation

After completing the above steps, restart your server to apply changes. The **SonicBoom** script is now ready to enhance your gameplay with immersive sound effects, improved speed mechanics, and extended world boundaries!
