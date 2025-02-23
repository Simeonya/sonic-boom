# SonicBoom Script

Enhance your GTA V gameplay with the **SonicBoom** script! This mod introduces exciting new features, including dynamic speed limits, immersive sound effects, and expanded world boundaries.

## Features

### 1. Sonic Boom Effect

- Triggers a **realistic sonic boom sound** when a plane surpasses a designated speed.
- Fully configurable speed threshold (`Config.SonicBoomKmh`).

### 2. Speed Hard Limit

- Implements **custom speed caps** for vehicles to maintain balanced gameplay.
- Individual limits can be set per vehicle model (`Config.SpeedHardLimitsByName`).
- Default speed restriction for unspecified vehicles (`Config.SpeedHardLimitOthers`).

### 3. Unlimited World Border

- Expands the game world boundary to its **maximum possible limit**.
- Prevents players from hitting the invisible edge of the map.

## Installation Guide

### Prerequisites

Ensure that the `interact-sound` resource is installed and running. This is essential for playing sound effects.

### Step-by-Step Installation

#### 1. Download the Script

- Navigate to the **Releases** section.
- [Download](https://github.com/Simeonya/sonic-boom/releases/download/1.0/sonic-boom.zip) the latest available version of the script.

#### 2. Extract and Move Files

- Extract the downloaded archive.
- Move the `sonicboom` folder into your **FXServer `resources` directory**.

#### 3. Configure the Server

- Open the `server.cfg` file.
- Add the following line to ensure the script runs:

  ```ini
  ensure sonicboom
  ```

#### 4. Customize the Configuration

- Open `config.lua` in the `sonicboom` directory.
- Modify settings according to your preferences.

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
